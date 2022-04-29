import T "mo:base/Text";

/*
This Motoko program demonstrates the ability to handle HTTP requests not just with
query calls (fast, non-mutating, don’t go through consensus), but also selectively
handle them using normal “update” calls (not so fast, can mutate the state). This
allows you to host full HTTP APIs or programs reacting to webhooks of other services
on the Internet Computer.
*/

actor {   
  type HeaderField = (Text, Text);

  type HttpResponse = {
    status_code: Nat16;
    headers: [HeaderField];
    body: Blob;
    upgrade: Bool; // ← This is new
  };

  type HttpRequest  = {
    method: Text;
    url: Text;
    headers: [HeaderField];
    body: Blob;
  };

  // The normal handler for HTTP requests. Note the query annotation! This
  // cannot mutate state.
  public query func http_request(req : HttpRequest) : async HttpResponse {
    // check if / is requested
    if ((req.method, req.url) == ("GET", "/")) {
      // If so, return the main page with with right headers
      return {
        status_code = 200;
        headers = [ ("content-type", "text/plain") ];
        body = "It does not work";
        upgrade = true; // ← If this is set, the request will be sent to http_request_update()
      }
    } else {
      // Else return an error code.      
      return {
        status_code = 404;
        headers = [ ("content-type", "text/plain") ];
        body = "404 Not found.\n This canister only serves /.\n";
        upgrade = false;
      }
    }
  };

  stable var n = 0;
  
  // The handler for HTTP requests via update calls. Note that this is _not_
  // a query call, and can mutate state (here the variable n).
  public func http_request_update(req : HttpRequest) : async HttpResponse {
    // check if / is requested
    if ((req.method, req.url) == ("GET", "/")) {
       n += 1; // Some example state change
      // If so, return the main page with with right headers
      return {
        status_code = 200;
        headers = [ ("content-type", "text/plain") ];
        body = T.encodeUtf8 ("It does work, and has worked " # debug_show n # " times so far.");
        upgrade = false;        
      }
    } else {
      // Else return an error code.      
      return {
        status_code = 404;
        headers = [ ("content-type", "text/plain") ];
        body = "404 Not found.\n This canister only serves /.\n";
        upgrade = false;
      }
    }
  };
}
