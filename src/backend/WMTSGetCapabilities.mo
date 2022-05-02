
import Text "mo:base/Text";
module {
public func getCapabilities() : Text {

  let wmtsGetCapabilities = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>" # 
"<Capabilities xmlns=\"http://www.opengis.net/wmts/1.0\" xmlns:ows=\"http://www.opengis.net/ows/1.1\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:gml=\"http://www.opengis.net/gml\" xsi:schemaLocation=\"http://www.opengis.net/wmts/1.0 http://schemas.opengis.net/wmts/1.0/wmtsGetCapabilities_response.xsd\" version=\"1.0.0\">" # 
"  <ows:ServiceIdentification>" # 
"    <ows:Title>IC WMTS</ows:Title>" # 
"    <ows:Abstract>A dezentralized WMTS Server on Internet Computer</ows:Abstract>" # 
"    <ows:Keywords/>" # 
"    <ows:ServiceType>OGC WMTS</ows:ServiceType>" # 
"    <ows:ServiceTypeVersion>1.0.0</ows:ServiceTypeVersion>" # 
"    <ows:Fees>NONE</ows:Fees>" # 
"    <ows:AccessConstraints>NONE</ows:AccessConstraints>" # 
"  </ows:ServiceIdentification>" # 
"  <ows:ServiceProvider>" # 
"    <ows:ProviderName>http://rrkah-fqaaa-aaaaa-aaaaq-cai.localhost:8000</ows:ProviderName>" # 
"    <ows:ServiceContact>" # 
"      <ows:IndividualName>Christoph Suter</ows:IndividualName>" # 
"      <ows:PositionName>Head of Geoinformatics</ows:PositionName>" # 
"      <ows:ContactInfo>" # 
"        <ows:Address>" # 
"          <ows:City>Zimmerwald</ows:City>" # 
"          <ows:Country>Switzerland</ows:Country>" # 
"          <ows:ElectronicMailAddress>christoph.suter@geotest.ch</ows:ElectronicMailAddress>" # 
"        </ows:Address>" # 
"      </ows:ContactInfo>" # 
"    </ows:ServiceContact>" # 
"  </ows:ServiceProvider>" # 
"  <ows:OperationsMetadata>" # 
"    <ows:Operation name=\"GetCapabilities\">" # 
"      <ows:DCP>" # 
"        <ows:HTTP>" # 
"          <ows:Get xlink:href=\"http://rrkah-fqaaa-aaaaa-aaaaq-cai.localhost:8000/wmts?\">" # 
"            <ows:Constraint name=\"GetEncoding\">" # 
"              <ows:AllowedValues>" # 
"                <ows:Value>KVP</ows:Value>" # 
"              </ows:AllowedValues>" # 
"            </ows:Constraint>" # 
"          </ows:Get>" # 
"        </ows:HTTP>" # 
"      </ows:DCP>" # 
"    </ows:Operation>" # 
"    <ows:Operation name=\"GetTile\">" # 
"      <ows:DCP>" # 
"        <ows:HTTP>" # 
"          <ows:Get xlink:href=\"http://rrkah-fqaaa-aaaaa-aaaaq-cai.localhost:8000/wmts?\">" # 
"            <ows:Constraint name=\"GetEncoding\">" # 
"              <ows:AllowedValues>" # 
"                <ows:Value>KVP</ows:Value>" # 
"              </ows:AllowedValues>" # 
"            </ows:Constraint>" # 
"          </ows:Get>" # 
"        </ows:HTTP>" # 
"      </ows:DCP>" # 
"    </ows:Operation>" # 
"  </ows:OperationsMetadata>" # 
"  <Contents>" # 
"    <Layer>" # 
"      <ows:Title>Swisstopo Pixelkarte</ows:Title>" # 
"      <ows:WGS84BoundingBox>" # 
"        <ows:LowerCorner>5.013927517810078 45.356000830173684</ows:LowerCorner>" # 
"        <ows:UpperCorner>11.477436823733676 48.2972994671473</ows:UpperCorner>" # 
"      </ows:WGS84BoundingBox>" # 
"      <ows:Identifier>swisstopo-pk</ows:Identifier>" # 
"      <Style isDefault=\"true\">" # 
"        <ows:Identifier>_empty</ows:Identifier>" # 
"      </Style>" # 
"      <Format>image/png</Format>" # 
"      <Format>image/jpeg</Format>" # 
"        " # 
"<Format>image/jpeg</Format>" # 
"<Dimension>" # 
"<ows:Identifier>Time</ows:Identifier>" # 
"<Default>current</Default>" # 
"<Value>current</Value>" # 
"</Dimension>" # 
"<TileMatrixSetLink>" # 
"<TileMatrixSet>3857</TileMatrixSet>" # 
"</TileMatrixSetLink>" #
"      <ResourceURL format=\"image/png\" resourceType=\"tile\" template=\"http://rrkah-fqaaa-aaaaa-aaaaq-cai.localhost:8000/1.0.0/swisstopo-pk/{style}/{TileMatrixSet}/2056/{TileMatrix}/{TileRow}/{TileCol}.png\"/>" # 
"      </Layer>" # 
"    " # 
"<TileMatrixSet>" # 
"<ows:Identifier>3857</ows:Identifier>" # 
"<ows:SupportedCRS>urn:ogc:def:crs:EPSG:3857</ows:SupportedCRS>" # 
"<TileMatrix>" # 
"<ows:Identifier>0</ows:Identifier>" # 
"<ScaleDenominator>559082264.029</ScaleDenominator>" # 
"<TopLeftCorner>-20037508.3428 20037508.3428</TopLeftCorner>" # 
"<TileWidth>256</TileWidth>" # 
"<TileHeight>256</TileHeight>" # 
"<MatrixWidth>1</MatrixWidth>" # 
"<MatrixHeight>1</MatrixHeight>" # 
"</TileMatrix>" # 
"<TileMatrix>" # 
"<ows:Identifier>1</ows:Identifier>" # 
"<ScaleDenominator>279541132.014</ScaleDenominator>" # 
"<TopLeftCorner>-20037508.3428 20037508.3428</TopLeftCorner>" # 
"<TileWidth>256</TileWidth>" # 
"<TileHeight>256</TileHeight>" # 
"<MatrixWidth>2</MatrixWidth>" # 
"<MatrixHeight>2</MatrixHeight>" # 
"</TileMatrix>" # 
"<TileMatrix>" # 
"<ows:Identifier>2</ows:Identifier>" # 
"<ScaleDenominator>139770566.007</ScaleDenominator>" # 
"<TopLeftCorner>-20037508.3428 20037508.3428</TopLeftCorner>" # 
"<TileWidth>256</TileWidth>" # 
"<TileHeight>256</TileHeight>" # 
"<MatrixWidth>4</MatrixWidth>" # 
"<MatrixHeight>4</MatrixHeight>" # 
"</TileMatrix>" # 
"<TileMatrix>" # 
"<ows:Identifier>3</ows:Identifier>" # 
"<ScaleDenominator>69885283.0036</ScaleDenominator>" # 
"<TopLeftCorner>-20037508.3428 20037508.3428</TopLeftCorner>" # 
"<TileWidth>256</TileWidth>" # 
"<TileHeight>256</TileHeight>" # 
"<MatrixWidth>8</MatrixWidth>" # 
"<MatrixHeight>8</MatrixHeight>" # 
"</TileMatrix>" # 
"<TileMatrix>" # 
"<ows:Identifier>4</ows:Identifier>" # 
"<ScaleDenominator>34942641.5018</ScaleDenominator>" # 
"<TopLeftCorner>-20037508.3428 20037508.3428</TopLeftCorner>" # 
"<TileWidth>256</TileWidth>" # 
"<TileHeight>256</TileHeight>" # 
"<MatrixWidth>16</MatrixWidth>" # 
"<MatrixHeight>16</MatrixHeight>" # 
"</TileMatrix>" # 
"<TileMatrix>" # 
"<ows:Identifier>5</ows:Identifier>" # 
"<ScaleDenominator>17471320.7509</ScaleDenominator>" # 
"<TopLeftCorner>-20037508.3428 20037508.3428</TopLeftCorner>" # 
"<TileWidth>256</TileWidth>" # 
"<TileHeight>256</TileHeight>" # 
"<MatrixWidth>32</MatrixWidth>" # 
"<MatrixHeight>32</MatrixHeight>" # 
"</TileMatrix>" # 
"<TileMatrix>" # 
"<ows:Identifier>6</ows:Identifier>" # 
"<ScaleDenominator>8735660.37545</ScaleDenominator>" # 
"<TopLeftCorner>-20037508.3428 20037508.3428</TopLeftCorner>" # 
"<TileWidth>256</TileWidth>" # 
"<TileHeight>256</TileHeight>" # 
"<MatrixWidth>64</MatrixWidth>" # 
"<MatrixHeight>64</MatrixHeight>" # 
"</TileMatrix>" # 
"<TileMatrix>" # 
"<ows:Identifier>7</ows:Identifier>" # 
"<ScaleDenominator>4367830.18772</ScaleDenominator>" # 
"<TopLeftCorner>-20037508.3428 20037508.3428</TopLeftCorner>" # 
"<TileWidth>256</TileWidth>" # 
"<TileHeight>256</TileHeight>" # 
"<MatrixWidth>128</MatrixWidth>" # 
"<MatrixHeight>128</MatrixHeight>" # 
"</TileMatrix>" # 
"<TileMatrix>" # 
"<ows:Identifier>8</ows:Identifier>" # 
"<ScaleDenominator>2183915.09386</ScaleDenominator>" # 
"<TopLeftCorner>-20037508.3428 20037508.3428</TopLeftCorner>" # 
"<TileWidth>256</TileWidth>" # 
"<TileHeight>256</TileHeight>" # 
"<MatrixWidth>256</MatrixWidth>" # 
"<MatrixHeight>256</MatrixHeight>" # 
"</TileMatrix>" # 
"<TileMatrix>" # 
"<ows:Identifier>9</ows:Identifier>" # 
"<ScaleDenominator>1091957.54693</ScaleDenominator>" # 
"<TopLeftCorner>-20037508.3428 20037508.3428</TopLeftCorner>" # 
"<TileWidth>256</TileWidth>" # 
"<TileHeight>256</TileHeight>" # 
"<MatrixWidth>512</MatrixWidth>" # 
"<MatrixHeight>512</MatrixHeight>" # 
"</TileMatrix>" # 
"<TileMatrix>" # 
"<ows:Identifier>10</ows:Identifier>" # 
"<ScaleDenominator>545978.773466</ScaleDenominator>" # 
"<TopLeftCorner>-20037508.3428 20037508.3428</TopLeftCorner>" # 
"<TileWidth>256</TileWidth>" # 
"<TileHeight>256</TileHeight>" # 
"<MatrixWidth>1024</MatrixWidth>" # 
"<MatrixHeight>1024</MatrixHeight>" # 
"</TileMatrix>" # 
"<TileMatrix>" # 
"<ows:Identifier>11</ows:Identifier>" # 
"<ScaleDenominator>272989.386733</ScaleDenominator>" # 
"<TopLeftCorner>-20037508.3428 20037508.3428</TopLeftCorner>" # 
"<TileWidth>256</TileWidth>" # 
"<TileHeight>256</TileHeight>" # 
"<MatrixWidth>2048</MatrixWidth>" # 
"<MatrixHeight>2048</MatrixHeight>" # 
"</TileMatrix>" # 
"<TileMatrix>" # 
"<ows:Identifier>12</ows:Identifier>" # 
"<ScaleDenominator>136494.693366</ScaleDenominator>" # 
"<TopLeftCorner>-20037508.3428 20037508.3428</TopLeftCorner>" # 
"<TileWidth>256</TileWidth>" # 
"<TileHeight>256</TileHeight>" # 
"<MatrixWidth>4096</MatrixWidth>" # 
"<MatrixHeight>4096</MatrixHeight>" # 
"</TileMatrix>" # 
"<TileMatrix>" # 
"<ows:Identifier>13</ows:Identifier>" # 
"<ScaleDenominator>68247.3466832</ScaleDenominator>" # 
"<TopLeftCorner>-20037508.3428 20037508.3428</TopLeftCorner>" # 
"<TileWidth>256</TileWidth>" # 
"<TileHeight>256</TileHeight>" # 
"<MatrixWidth>8192</MatrixWidth>" # 
"<MatrixHeight>8192</MatrixHeight>" # 
"</TileMatrix>" # 
"<TileMatrix>" # 
"<ows:Identifier>14</ows:Identifier>" # 
"<ScaleDenominator>34123.6733416</ScaleDenominator>" # 
"<TopLeftCorner>-20037508.3428 20037508.3428</TopLeftCorner>" # 
"<TileWidth>256</TileWidth>" # 
"<TileHeight>256</TileHeight>" # 
"<MatrixWidth>16384</MatrixWidth>" # 
"<MatrixHeight>16384</MatrixHeight>" # 
"</TileMatrix>" # 
"<TileMatrix>" # 
"<ows:Identifier>15</ows:Identifier>" # 
"<ScaleDenominator>17061.8366708</ScaleDenominator>" # 
"<TopLeftCorner>-20037508.3428 20037508.3428</TopLeftCorner>" # 
"<TileWidth>256</TileWidth>" # 
"<TileHeight>256</TileHeight>" # 
"<MatrixWidth>32768</MatrixWidth>" # 
"<MatrixHeight>32768</MatrixHeight>" # 
"</TileMatrix>" # 
"<TileMatrix>" # 
"<ows:Identifier>16</ows:Identifier>" # 
"<ScaleDenominator>8530.9183354</ScaleDenominator>" # 
"<TopLeftCorner>-20037508.3428 20037508.3428</TopLeftCorner>" # 
"<TileWidth>256</TileWidth>" # 
"<TileHeight>256</TileHeight>" # 
"<MatrixWidth>65536</MatrixWidth>" # 
"<MatrixHeight>65536</MatrixHeight>" # 
"</TileMatrix>" # 
"<TileMatrix>" # 
"<ows:Identifier>17</ows:Identifier>" # 
"<ScaleDenominator>4265.4591677</ScaleDenominator>" # 
"<TopLeftCorner>-20037508.3428 20037508.3428</TopLeftCorner>" # 
"<TileWidth>256</TileWidth>" # 
"<TileHeight>256</TileHeight>" # 
"<MatrixWidth>131072</MatrixWidth>" # 
"<MatrixHeight>131072</MatrixHeight>" # 
"</TileMatrix>" # 
"<TileMatrix>" # 
"<ows:Identifier>18</ows:Identifier>" # 
"<ScaleDenominator>2132.72958385</ScaleDenominator>" # 
"<TopLeftCorner>-20037508.3428 20037508.3428</TopLeftCorner>" # 
"<TileWidth>256</TileWidth>" # 
"<TileHeight>256</TileHeight>" # 
"<MatrixWidth>262144</MatrixWidth>" # 
"<MatrixHeight>262144</MatrixHeight>" # 
"</TileMatrix>" # 
"<TileMatrix>" # 
"<ows:Identifier>19</ows:Identifier>" # 
"<ScaleDenominator>1066.36479192</ScaleDenominator>" # 
"<TopLeftCorner>-20037508.3428 20037508.3428</TopLeftCorner>" # 
"<TileWidth>256</TileWidth>" # 
"<TileHeight>256</TileHeight>" # 
"<MatrixWidth>524288</MatrixWidth>" # 
"<MatrixHeight>524288</MatrixHeight>" # 
"</TileMatrix>" # 
"<TileMatrix>" # 
"<ows:Identifier>20</ows:Identifier>" # 
"<ScaleDenominator>533.182395962</ScaleDenominator>" # 
"<TopLeftCorner>-20037508.3428 20037508.3428</TopLeftCorner>" # 
"<TileWidth>256</TileWidth>" # 
"<TileHeight>256</TileHeight>" # 
"<MatrixWidth>1048576</MatrixWidth>" # 
"<MatrixHeight>1048576</MatrixHeight>" # 
"</TileMatrix>" # 
"<TileMatrix>" # 
"<ows:Identifier>21</ows:Identifier>" # 
"<ScaleDenominator>266.591197981</ScaleDenominator>" # 
"<TopLeftCorner>-20037508.3428 20037508.3428</TopLeftCorner>" # 
"<TileWidth>256</TileWidth>" # 
"<TileHeight>256</TileHeight>" # 
"<MatrixWidth>2097152</MatrixWidth>" # 
"<MatrixHeight>2097152</MatrixHeight>" # 
"</TileMatrix>" # 
"</TileMatrixSet>" # 
"  </Contents>" # 
"  <ServiceMetadataURL xlink:href=\"http://rrkah-fqaaa-aaaaa-aaaaq-cai.localhost:8000/wmts?SERVICE=wmts&amp;REQUEST=getcapabilities&amp;VERSION=1.0.0\"/>" # 
"  <ServiceMetadataURL xlink:href=\"http://rrkah-fqaaa-aaaaa-aaaaq-cai.localhost:8000/wmts/rest/WMTSCapabilities.xml\"/>" # 
"</Capabilities>";
}

}