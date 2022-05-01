
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
"    <ows:ProviderName>http://geoserver.geobrowser.ch</ows:ProviderName>" # 
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
"          <ows:Get xlink:href=\"http://geoserver.geobrowser.ch/geoserver/gwc/service/wmts?\">" # 
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
"          <ows:Get xlink:href=\"http://geoserver.geobrowser.ch/geoserver/gwc/service/wmts?\">" # 
"            <ows:Constraint name=\"GetEncoding\">" # 
"              <ows:AllowedValues>" # 
"                <ows:Value>KVP</ows:Value>" # 
"              </ows:AllowedValues>" # 
"            </ows:Constraint>" # 
"          </ows:Get>" # 
"        </ows:HTTP>" # 
"      </ows:DCP>" # 
"    </ows:Operation>" # 
"    <ows:Operation name=\"GetFeatureInfo\">" # 
"      <ows:DCP>" # 
"        <ows:HTTP>" # 
"          <ows:Get xlink:href=\"http://geoserver.geobrowser.ch/geoserver/gwc/service/wmts?\">" # 
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
"      <TileMatrixSetLink>" # 
"        <TileMatrixSet>EPSG:2056</TileMatrixSet>" # 
"        <TileMatrixSetLimits>" # 
"          <TileMatrixLimits>" # 
"            <TileMatrix>0</TileMatrix>" # 
"            <MinTileRow>0</MinTileRow>" # 
"            <MaxTileRow>0</MaxTileRow>" # 
"            <MinTileCol>0</MinTileCol>" # 
"            <MaxTileCol>0</MaxTileCol>" # 
"          </TileMatrixLimits>" # 
"          <TileMatrixLimits>" # 
"            <TileMatrix>1</TileMatrix>" # 
"            <MinTileRow>0</MinTileRow>" # 
"            <MaxTileRow>0</MaxTileRow>" # 
"            <MinTileCol>0</MinTileCol>" # 
"            <MaxTileCol>0</MaxTileCol>" # 
"          </TileMatrixLimits>" # 
"          <TileMatrixLimits>" # 
"            <TileMatrix>2</TileMatrix>" # 
"            <MinTileRow>0</MinTileRow>" # 
"            <MaxTileRow>0</MaxTileRow>" # 
"            <MinTileCol>0</MinTileCol>" # 
"            <MaxTileCol>0</MaxTileCol>" # 
"          </TileMatrixLimits>" # 
"          <TileMatrixLimits>" # 
"            <TileMatrix>3</TileMatrix>" # 
"            <MinTileRow>0</MinTileRow>" # 
"            <MaxTileRow>0</MaxTileRow>" # 
"            <MinTileCol>0</MinTileCol>" # 
"            <MaxTileCol>0</MaxTileCol>" # 
"          </TileMatrixLimits>" # 
"          <TileMatrixLimits>" # 
"            <TileMatrix>4</TileMatrix>" # 
"            <MinTileRow>0</MinTileRow>" # 
"            <MaxTileRow>0</MaxTileRow>" # 
"            <MinTileCol>0</MinTileCol>" # 
"            <MaxTileCol>0</MaxTileCol>" # 
"          </TileMatrixLimits>" # 
"          <TileMatrixLimits>" # 
"            <TileMatrix>5</TileMatrix>" # 
"            <MinTileRow>0</MinTileRow>" # 
"            <MaxTileRow>0</MaxTileRow>" # 
"            <MinTileCol>0</MinTileCol>" # 
"            <MaxTileCol>0</MaxTileCol>" # 
"          </TileMatrixLimits>" # 
"          <TileMatrixLimits>" # 
"            <TileMatrix>6</TileMatrix>" # 
"            <MinTileRow>0</MinTileRow>" # 
"            <MaxTileRow>0</MaxTileRow>" # 
"            <MinTileCol>0</MinTileCol>" # 
"            <MaxTileCol>0</MaxTileCol>" # 
"          </TileMatrixLimits>" # 
"          <TileMatrixLimits>" # 
"            <TileMatrix>7</TileMatrix>" # 
"            <MinTileRow>0</MinTileRow>" # 
"            <MaxTileRow>0</MaxTileRow>" # 
"            <MinTileCol>0</MinTileCol>" # 
"            <MaxTileCol>0</MaxTileCol>" # 
"          </TileMatrixLimits>" # 
"          <TileMatrixLimits>" # 
"            <TileMatrix>8</TileMatrix>" # 
"            <MinTileRow>0</MinTileRow>" # 
"            <MaxTileRow>0</MaxTileRow>" # 
"            <MinTileCol>0</MinTileCol>" # 
"            <MaxTileCol>0</MaxTileCol>" # 
"          </TileMatrixLimits>" # 
"          <TileMatrixLimits>" # 
"            <TileMatrix>9</TileMatrix>" # 
"            <MinTileRow>0</MinTileRow>" # 
"            <MaxTileRow>0</MaxTileRow>" # 
"            <MinTileCol>0</MinTileCol>" # 
"            <MaxTileCol>0</MaxTileCol>" # 
"          </TileMatrixLimits>" # 
"          <TileMatrixLimits>" # 
"            <TileMatrix>10</TileMatrix>" # 
"            <MinTileRow>0</MinTileRow>" # 
"            <MaxTileRow>0</MaxTileRow>" # 
"            <MinTileCol>0</MinTileCol>" # 
"            <MaxTileCol>1</MaxTileCol>" # 
"          </TileMatrixLimits>" # 
"          <TileMatrixLimits>" # 
"            <TileMatrix>11</TileMatrix>" # 
"            <MinTileRow>0</MinTileRow>" # 
"            <MaxTileRow>0</MaxTileRow>" # 
"            <MinTileCol>0</MinTileCol>" # 
"            <MaxTileCol>1</MaxTileCol>" # 
"          </TileMatrixLimits>" # 
"          <TileMatrixLimits>" # 
"            <TileMatrix>12</TileMatrix>" # 
"            <MinTileRow>-1</MinTileRow>" # 
"            <MaxTileRow>0</MaxTileRow>" # 
"            <MinTileCol>0</MinTileCol>" # 
"            <MaxTileCol>1</MaxTileCol>" # 
"          </TileMatrixLimits>" # 
"          <TileMatrixLimits>" # 
"            <TileMatrix>13</TileMatrix>" # 
"            <MinTileRow>0</MinTileRow>" # 
"            <MaxTileRow>1</MaxTileRow>" # 
"            <MinTileCol>0</MinTileCol>" # 
"            <MaxTileCol>2</MaxTileCol>" # 
"          </TileMatrixLimits>" # 
"          <TileMatrixLimits>" # 
"            <TileMatrix>14</TileMatrix>" # 
"            <MinTileRow>0</MinTileRow>" # 
"            <MaxTileRow>1</MaxTileRow>" # 
"            <MinTileCol>0</MinTileCol>" # 
"            <MaxTileCol>2</MaxTileCol>" # 
"          </TileMatrixLimits>" # 
"          <TileMatrixLimits>" # 
"            <TileMatrix>15</TileMatrix>" # 
"            <MinTileRow>-1</MinTileRow>" # 
"            <MaxTileRow>1</MaxTileRow>" # 
"            <MinTileCol>0</MinTileCol>" # 
"            <MaxTileCol>3</MaxTileCol>" # 
"          </TileMatrixLimits>" # 
"          <TileMatrixLimits>" # 
"            <TileMatrix>16</TileMatrix>" # 
"            <MinTileRow>-1</MinTileRow>" # 
"            <MaxTileRow>3</MaxTileRow>" # 
"            <MinTileCol>0</MinTileCol>" # 
"            <MaxTileCol>6</MaxTileCol>" # 
"          </TileMatrixLimits>" # 
"          <TileMatrixLimits>" # 
"            <TileMatrix>17</TileMatrix>" # 
"            <MinTileRow>-3</MinTileRow>" # 
"            <MaxTileRow>8</MaxTileRow>" # 
"            <MinTileCol>0</MinTileCol>" # 
"            <MaxTileCol>16</MaxTileCol>" # 
"          </TileMatrixLimits>" # 
"          <TileMatrixLimits>" # 
"            <TileMatrix>18</TileMatrix>" # 
"            <MinTileRow>-5</MinTileRow>" # 
"            <MaxTileRow>17</MaxTileRow>" # 
"            <MinTileCol>0</MinTileCol>" # 
"            <MaxTileCol>33</MaxTileCol>" # 
"          </TileMatrixLimits>" # 
"          <TileMatrixLimits>" # 
"            <TileMatrix>19</TileMatrix>" # 
"            <MinTileRow>-11</MinTileRow>" # 
"            <MaxTileRow>44</MaxTileRow>" # 
"            <MinTileCol>0</MinTileCol>" # 
"            <MaxTileCol>84</MaxTileCol>" # 
"          </TileMatrixLimits>" # 
"          <TileMatrixLimits>" # 
"            <TileMatrix>20</TileMatrix>" # 
"            <MinTileRow>-22</MinTileRow>" # 
"            <MaxTileRow>88</MaxTileRow>" # 
"            <MinTileCol>0</MinTileCol>" # 
"            <MaxTileCol>168</MaxTileCol>" # 
"          </TileMatrixLimits>" # 
"          <TileMatrixLimits>" # 
"            <TileMatrix>21</TileMatrix>" # 
"            <MinTileRow>-45</MinTileRow>" # 
"            <MaxTileRow>176</MaxTileRow>" # 
"            <MinTileCol>0</MinTileCol>" # 
"            <MaxTileCol>337</MaxTileCol>" # 
"          </TileMatrixLimits>" # 
"          <TileMatrixLimits>" # 
"            <TileMatrix>22</TileMatrix>" # 
"            <MinTileRow>-90</MinTileRow>" # 
"            <MaxTileRow>352</MaxTileRow>" # 
"            <MinTileCol>0</MinTileCol>" # 
"            <MaxTileCol>674</MaxTileCol>" # 
"          </TileMatrixLimits>" # 
"          <TileMatrixLimits>" # 
"            <TileMatrix>23</TileMatrix>" # 
"            <MinTileRow>-113</MinTileRow>" # 
"            <MaxTileRow>440</MaxTileRow>" # 
"            <MinTileCol>0</MinTileCol>" # 
"            <MaxTileCol>842</MaxTileCol>" # 
"          </TileMatrixLimits>" # 
"          <TileMatrixLimits>" # 
"            <TileMatrix>24</TileMatrix>" # 
"            <MinTileRow>-150</MinTileRow>" # 
"            <MaxTileRow>587</MaxTileRow>" # 
"            <MinTileCol>0</MinTileCol>" # 
"            <MaxTileCol>1123</MaxTileCol>" # 
"          </TileMatrixLimits>" # 
"          <TileMatrixLimits>" # 
"            <TileMatrix>25</TileMatrix>" # 
"            <MinTileRow>-225</MinTileRow>" # 
"            <MaxTileRow>881</MaxTileRow>" # 
"            <MinTileCol>0</MinTileCol>" # 
"            <MaxTileCol>1685</MaxTileCol>" # 
"          </TileMatrixLimits>" # 
"          <TileMatrixLimits>" # 
"            <TileMatrix>26</TileMatrix>" # 
"            <MinTileRow>-450</MinTileRow>" # 
"            <MaxTileRow>1762</MaxTileRow>" # 
"            <MinTileCol>0</MinTileCol>" # 
"            <MaxTileCol>3370</MaxTileCol>" # 
"          </TileMatrixLimits>" # 
"          <TileMatrixLimits>" # 
"            <TileMatrix>27</TileMatrix>" # 
"            <MinTileRow>-901</MinTileRow>" # 
"            <MaxTileRow>3524</MaxTileRow>" # 
"            <MinTileCol>0</MinTileCol>" # 
"            <MaxTileCol>6741</MaxTileCol>" # 
"          </TileMatrixLimits>" # 
"          <TileMatrixLimits>" # 
"            <TileMatrix>28</TileMatrix>" # 
"            <MinTileRow>-1801</MinTileRow>" # 
"            <MaxTileRow>7049</MaxTileRow>" # 
"            <MinTileCol>0</MinTileCol>" # 
"            <MaxTileCol>13482</MaxTileCol>" # 
"          </TileMatrixLimits>" # 
"          <TileMatrixLimits>" # 
"            <TileMatrix>29</TileMatrix>" # 
"            <MinTileRow>-3602</MinTileRow>" # 
"            <MaxTileRow>14099</MaxTileRow>" # 
"            <MinTileCol>0</MinTileCol>" # 
"            <MaxTileCol>26964</MaxTileCol>" # 
"          </TileMatrixLimits>" # 
"          <TileMatrixLimits>" # 
"            <TileMatrix>30</TileMatrix>" # 
"            <MinTileRow>-7203</MinTileRow>" # 
"            <MaxTileRow>28199</MaxTileRow>" # 
"            <MinTileCol>0</MinTileCol>" # 
"            <MaxTileCol>53929</MaxTileCol>" # 
"          </TileMatrixLimits>" # 
"          <TileMatrixLimits>" # 
"            <TileMatrix>31</TileMatrix>" # 
"            <MinTileRow>-14406</MinTileRow>" # 
"            <MaxTileRow>56398</MaxTileRow>" # 
"            <MinTileCol>0</MinTileCol>" # 
"            <MaxTileCol>107858</MaxTileCol>" # 
"          </TileMatrixLimits>" # 
"        </TileMatrixSetLimits>" # 
"      </TileMatrixSetLink>" # 
"      <ResourceURL format=\"image/png\" resourceType=\"tile\" template=\"http://geoserver.geobrowser.ch/geoserver/gwc/service/wmts/rest/feldapp:swisstopo-zoom/{style}/{TileMatrixSet}/{TileMatrix}/{TileRow}/{TileCol}?format=image/png\"/>" # 
"      </Layer>" # 
"    " # 
"    <TileMatrixSet>" # 
"      <ows:Identifier>EPSG:2056</ows:Identifier>" # 
"      <ows:SupportedCRS>urn:ogc:def:crs:EPSG::2056</ows:SupportedCRS>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>0</ows:Identifier>" # 
"        <ScaleDenominator>1.4285714285714287E7</ScaleDenominator>" # 
"        <TopLeftCorner>2485014.052451379 2098189.0</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>1</MatrixWidth>" # 
"        <MatrixHeight>1</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>1</ows:Identifier>" # 
"        <ScaleDenominator>1.3392857142857144E7</ScaleDenominator>" # 
"        <TopLeftCorner>2485014.052451379 2034189.0</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>1</MatrixWidth>" # 
"        <MatrixHeight>1</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>2</ows:Identifier>" # 
"        <ScaleDenominator>1.2500000000000002E7</ScaleDenominator>" # 
"        <TopLeftCorner>2485014.052451379 1970189.0</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>1</MatrixWidth>" # 
"        <MatrixHeight>1</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>3</ows:Identifier>" # 
"        <ScaleDenominator>1.1607142857142858E7</ScaleDenominator>" # 
"        <TopLeftCorner>2485014.052451379 1906189.0</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>1</MatrixWidth>" # 
"        <MatrixHeight>1</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>4</ows:Identifier>" # 
"        <ScaleDenominator>1.0714285714285715E7</ScaleDenominator>" # 
"        <TopLeftCorner>2485014.052451379 1842189.0</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>1</MatrixWidth>" # 
"        <MatrixHeight>1</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>5</ows:Identifier>" # 
"        <ScaleDenominator>9821428.571428573</ScaleDenominator>" # 
"        <TopLeftCorner>2485014.052451379 1778189.0</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>1</MatrixWidth>" # 
"        <MatrixHeight>1</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>6</ows:Identifier>" # 
"        <ScaleDenominator>8928571.42857143</ScaleDenominator>" # 
"        <TopLeftCorner>2485014.052451379 1714189.0</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>1</MatrixWidth>" # 
"        <MatrixHeight>1</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>7</ows:Identifier>" # 
"        <ScaleDenominator>8035714.285714286</ScaleDenominator>" # 
"        <TopLeftCorner>2485014.052451379 1650189.0</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>1</MatrixWidth>" # 
"        <MatrixHeight>1</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>8</ows:Identifier>" # 
"        <ScaleDenominator>7142857.142857144</ScaleDenominator>" # 
"        <TopLeftCorner>2485014.052451379 1586189.0</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>1</MatrixWidth>" # 
"        <MatrixHeight>1</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>9</ows:Identifier>" # 
"        <ScaleDenominator>6250000.000000001</ScaleDenominator>" # 
"        <TopLeftCorner>2485014.052451379 1522189.0</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>1</MatrixWidth>" # 
"        <MatrixHeight>1</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>10</ows:Identifier>" # 
"        <ScaleDenominator>5357142.857142857</ScaleDenominator>" # 
"        <TopLeftCorner>2485014.052451379 1458189.0</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>1</MatrixWidth>" # 
"        <MatrixHeight>1</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>11</ows:Identifier>" # 
"        <ScaleDenominator>4464285.714285715</ScaleDenominator>" # 
"        <TopLeftCorner>2485014.052451379 1394189.0</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>2</MatrixWidth>" # 
"        <MatrixHeight>1</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>12</ows:Identifier>" # 
"        <ScaleDenominator>3571428.571428572</ScaleDenominator>" # 
"        <TopLeftCorner>2485014.052451379 1330189.0</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>2</MatrixWidth>" # 
"        <MatrixHeight>1</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>13</ows:Identifier>" # 
"        <ScaleDenominator>2678571.4285714286</ScaleDenominator>" # 
"        <TopLeftCorner>2485014.052451379 1458189.0</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>2</MatrixWidth>" # 
"        <MatrixHeight>2</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>14</ows:Identifier>" # 
"        <ScaleDenominator>2321428.571428572</ScaleDenominator>" # 
"        <TopLeftCorner>2485014.052451379 1406989.0</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>3</MatrixWidth>" # 
"        <MatrixHeight>2</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>15</ows:Identifier>" # 
"        <ScaleDenominator>1785714.285714286</ScaleDenominator>" # 
"        <TopLeftCorner>2485014.052451379 1330189.0</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>3</MatrixWidth>" # 
"        <MatrixHeight>2</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>16</ows:Identifier>" # 
"        <ScaleDenominator>892857.142857143</ScaleDenominator>" # 
"        <TopLeftCorner>2485014.052451379 1330189.0</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>6</MatrixWidth>" # 
"        <MatrixHeight>4</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>17</ows:Identifier>" # 
"        <ScaleDenominator>357142.85714285716</ScaleDenominator>" # 
"        <TopLeftCorner>2485014.052451379 1304589.0</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>14</MatrixWidth>" # 
"        <MatrixHeight>9</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>18</ows:Identifier>" # 
"        <ScaleDenominator>178571.42857142858</ScaleDenominator>" # 
"        <TopLeftCorner>2485014.052451379 1304589.0</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>28</MatrixWidth>" # 
"        <MatrixHeight>18</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>19</ows:Identifier>" # 
"        <ScaleDenominator>71428.57142857143</ScaleDenominator>" # 
"        <TopLeftCorner>2485014.052451379 1304589.0</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>69</MatrixWidth>" # 
"        <MatrixHeight>45</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>20</ows:Identifier>" # 
"        <ScaleDenominator>35714.28571428572</ScaleDenominator>" # 
"        <TopLeftCorner>2485014.052451379 1302029.0</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>138</MatrixWidth>" # 
"        <MatrixHeight>89</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>21</ows:Identifier>" # 
"        <ScaleDenominator>17857.14285714286</ScaleDenominator>" # 
"        <TopLeftCorner>2485014.052451379 1300749.0</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>275</MatrixWidth>" # 
"        <MatrixHeight>177</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>22</ows:Identifier>" # 
"        <ScaleDenominator>8928.57142857143</ScaleDenominator>" # 
"        <TopLeftCorner>2485014.052451379 1300109.0</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>550</MatrixWidth>" # 
"        <MatrixHeight>353</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>23</ows:Identifier>" # 
"        <ScaleDenominator>7142.857142857143</ScaleDenominator>" # 
"        <TopLeftCorner>2485014.052451379 1299981.0</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>688</MatrixWidth>" # 
"        <MatrixHeight>441</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>24</ows:Identifier>" # 
"        <ScaleDenominator>5357.142857142858</ScaleDenominator>" # 
"        <TopLeftCorner>2485014.052451379 1299981.0</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>917</MatrixWidth>" # 
"        <MatrixHeight>588</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>25</ows:Identifier>" # 
"        <ScaleDenominator>3571.4285714285716</ScaleDenominator>" # 
"        <TopLeftCorner>2485014.052451379 1299981.0</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>1376</MatrixWidth>" # 
"        <MatrixHeight>882</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>26</ows:Identifier>" # 
"        <ScaleDenominator>1785.7142857142858</ScaleDenominator>" # 
"        <TopLeftCorner>2485014.052451379 1299853.0</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>2751</MatrixWidth>" # 
"        <MatrixHeight>1763</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>27</ows:Identifier>" # 
"        <ScaleDenominator>892.8571428571429</ScaleDenominator>" # 
"        <TopLeftCorner>2485014.052451379 1299789.0</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>5501</MatrixWidth>" # 
"        <MatrixHeight>3525</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>28</ows:Identifier>" # 
"        <ScaleDenominator>446.42857142857144</ScaleDenominator>" # 
"        <TopLeftCorner>2485014.052451379 1299789.0</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>11001</MatrixWidth>" # 
"        <MatrixHeight>7050</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>29</ows:Identifier>" # 
"        <ScaleDenominator>223.21428571428572</ScaleDenominator>" # 
"        <TopLeftCorner>2485014.052451379 1299789.0</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>22001</MatrixWidth>" # 
"        <MatrixHeight>14100</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>30</ows:Identifier>" # 
"        <ScaleDenominator>111.60714285714286</ScaleDenominator>" # 
"        <TopLeftCorner>2485014.052451379 1299789.0</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>44001</MatrixWidth>" # 
"        <MatrixHeight>28200</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>31</ows:Identifier>" # 
"        <ScaleDenominator>55.80357142857143</ScaleDenominator>" # 
"        <TopLeftCorner>2485014.052451379 1299785.0</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>88001</MatrixWidth>" # 
"        <MatrixHeight>56399</MatrixHeight>" # 
"      </TileMatrix>" # 
"    </TileMatrixSet>" # 
"    <TileMatrixSet>" # 
"      <ows:Identifier>EPSG:900913</ows:Identifier>" # 
"      <ows:SupportedCRS>urn:ogc:def:crs:EPSG::900913</ows:SupportedCRS>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>EPSG:900913:0</ows:Identifier>" # 
"        <ScaleDenominator>5.590822639508929E8</ScaleDenominator>" # 
"        <TopLeftCorner>-2.003750834E7 2.0037508E7</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>1</MatrixWidth>" # 
"        <MatrixHeight>1</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>EPSG:900913:1</ows:Identifier>" # 
"        <ScaleDenominator>2.7954113197544646E8</ScaleDenominator>" # 
"        <TopLeftCorner>-2.003750834E7 2.0037508E7</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>2</MatrixWidth>" # 
"        <MatrixHeight>2</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>EPSG:900913:2</ows:Identifier>" # 
"        <ScaleDenominator>1.3977056598772323E8</ScaleDenominator>" # 
"        <TopLeftCorner>-2.003750834E7 2.0037508E7</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>4</MatrixWidth>" # 
"        <MatrixHeight>4</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>EPSG:900913:3</ows:Identifier>" # 
"        <ScaleDenominator>6.988528299386162E7</ScaleDenominator>" # 
"        <TopLeftCorner>-2.003750834E7 2.0037508E7</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>8</MatrixWidth>" # 
"        <MatrixHeight>8</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>EPSG:900913:4</ows:Identifier>" # 
"        <ScaleDenominator>3.494264149693081E7</ScaleDenominator>" # 
"        <TopLeftCorner>-2.003750834E7 2.0037508E7</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>16</MatrixWidth>" # 
"        <MatrixHeight>16</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>EPSG:900913:5</ows:Identifier>" # 
"        <ScaleDenominator>1.7471320748465404E7</ScaleDenominator>" # 
"        <TopLeftCorner>-2.003750834E7 2.0037508E7</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>32</MatrixWidth>" # 
"        <MatrixHeight>32</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>EPSG:900913:6</ows:Identifier>" # 
"        <ScaleDenominator>8735660.374232702</ScaleDenominator>" # 
"        <TopLeftCorner>-2.003750834E7 2.0037508E7</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>64</MatrixWidth>" # 
"        <MatrixHeight>64</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>EPSG:900913:7</ows:Identifier>" # 
"        <ScaleDenominator>4367830.187116351</ScaleDenominator>" # 
"        <TopLeftCorner>-2.003750834E7 2.0037508E7</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>128</MatrixWidth>" # 
"        <MatrixHeight>128</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>EPSG:900913:8</ows:Identifier>" # 
"        <ScaleDenominator>2183915.0935581755</ScaleDenominator>" # 
"        <TopLeftCorner>-2.003750834E7 2.0037508E7</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>256</MatrixWidth>" # 
"        <MatrixHeight>256</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>EPSG:900913:9</ows:Identifier>" # 
"        <ScaleDenominator>1091957.5467790877</ScaleDenominator>" # 
"        <TopLeftCorner>-2.003750834E7 2.0037508E7</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>512</MatrixWidth>" # 
"        <MatrixHeight>512</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>EPSG:900913:10</ows:Identifier>" # 
"        <ScaleDenominator>545978.7733895439</ScaleDenominator>" # 
"        <TopLeftCorner>-2.003750834E7 2.0037508E7</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>1024</MatrixWidth>" # 
"        <MatrixHeight>1024</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>EPSG:900913:11</ows:Identifier>" # 
"        <ScaleDenominator>272989.38669477194</ScaleDenominator>" # 
"        <TopLeftCorner>-2.003750834E7 2.0037508E7</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>2048</MatrixWidth>" # 
"        <MatrixHeight>2048</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>EPSG:900913:12</ows:Identifier>" # 
"        <ScaleDenominator>136494.69334738597</ScaleDenominator>" # 
"        <TopLeftCorner>-2.003750834E7 2.0037508E7</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>4096</MatrixWidth>" # 
"        <MatrixHeight>4096</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>EPSG:900913:13</ows:Identifier>" # 
"        <ScaleDenominator>68247.34667369298</ScaleDenominator>" # 
"        <TopLeftCorner>-2.003750834E7 2.0037508E7</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>8192</MatrixWidth>" # 
"        <MatrixHeight>8192</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>EPSG:900913:14</ows:Identifier>" # 
"        <ScaleDenominator>34123.67333684649</ScaleDenominator>" # 
"        <TopLeftCorner>-2.003750834E7 2.0037508E7</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>16384</MatrixWidth>" # 
"        <MatrixHeight>16384</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>EPSG:900913:15</ows:Identifier>" # 
"        <ScaleDenominator>17061.836668423246</ScaleDenominator>" # 
"        <TopLeftCorner>-2.003750834E7 2.0037508E7</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>32768</MatrixWidth>" # 
"        <MatrixHeight>32768</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>EPSG:900913:16</ows:Identifier>" # 
"        <ScaleDenominator>8530.918334211623</ScaleDenominator>" # 
"        <TopLeftCorner>-2.003750834E7 2.0037508E7</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>65536</MatrixWidth>" # 
"        <MatrixHeight>65536</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>EPSG:900913:17</ows:Identifier>" # 
"        <ScaleDenominator>4265.4591671058115</ScaleDenominator>" # 
"        <TopLeftCorner>-2.003750834E7 2.0037508E7</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>131072</MatrixWidth>" # 
"        <MatrixHeight>131072</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>EPSG:900913:18</ows:Identifier>" # 
"        <ScaleDenominator>2132.7295835529058</ScaleDenominator>" # 
"        <TopLeftCorner>-2.003750834E7 2.0037508E7</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>262144</MatrixWidth>" # 
"        <MatrixHeight>262144</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>EPSG:900913:19</ows:Identifier>" # 
"        <ScaleDenominator>1066.3647917764529</ScaleDenominator>" # 
"        <TopLeftCorner>-2.003750834E7 2.0037508E7</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>524288</MatrixWidth>" # 
"        <MatrixHeight>524288</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>EPSG:900913:20</ows:Identifier>" # 
"        <ScaleDenominator>533.1823958882264</ScaleDenominator>" # 
"        <TopLeftCorner>-2.003750834E7 2.0037508E7</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>1048576</MatrixWidth>" # 
"        <MatrixHeight>1048576</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>EPSG:900913:21</ows:Identifier>" # 
"        <ScaleDenominator>266.5911979441132</ScaleDenominator>" # 
"        <TopLeftCorner>-2.003750834E7 2.0037508E7</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>2097152</MatrixWidth>" # 
"        <MatrixHeight>2097152</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>EPSG:900913:22</ows:Identifier>" # 
"        <ScaleDenominator>133.2955989720566</ScaleDenominator>" # 
"        <TopLeftCorner>-2.003750834E7 2.0037508E7</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>4194304</MatrixWidth>" # 
"        <MatrixHeight>4194304</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>EPSG:900913:23</ows:Identifier>" # 
"        <ScaleDenominator>66.6477994860283</ScaleDenominator>" # 
"        <TopLeftCorner>-2.003750834E7 2.0037508E7</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>8388608</MatrixWidth>" # 
"        <MatrixHeight>8388608</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>EPSG:900913:24</ows:Identifier>" # 
"        <ScaleDenominator>33.32389974301415</ScaleDenominator>" # 
"        <TopLeftCorner>-2.003750834E7 2.0037508E7</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>16777216</MatrixWidth>" # 
"        <MatrixHeight>16777216</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>EPSG:900913:25</ows:Identifier>" # 
"        <ScaleDenominator>16.661949871507076</ScaleDenominator>" # 
"        <TopLeftCorner>-2.003750834E7 2.0037508E7</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>33554432</MatrixWidth>" # 
"        <MatrixHeight>33554432</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>EPSG:900913:26</ows:Identifier>" # 
"        <ScaleDenominator>8.330974935753538</ScaleDenominator>" # 
"        <TopLeftCorner>-2.003750834E7 2.0037508E7</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>67108864</MatrixWidth>" # 
"        <MatrixHeight>67108864</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>EPSG:900913:27</ows:Identifier>" # 
"        <ScaleDenominator>4.165487467876769</ScaleDenominator>" # 
"        <TopLeftCorner>-2.003750834E7 2.0037508E7</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>134217728</MatrixWidth>" # 
"        <MatrixHeight>134217728</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>EPSG:900913:28</ows:Identifier>" # 
"        <ScaleDenominator>2.0827437339383845</ScaleDenominator>" # 
"        <TopLeftCorner>-2.003750834E7 2.0037508E7</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>268435456</MatrixWidth>" # 
"        <MatrixHeight>268435456</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>EPSG:900913:29</ows:Identifier>" # 
"        <ScaleDenominator>1.0413718669691923</ScaleDenominator>" # 
"        <TopLeftCorner>-2.003750834E7 2.0037508E7</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>536870912</MatrixWidth>" # 
"        <MatrixHeight>536870912</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>EPSG:900913:30</ows:Identifier>" # 
"        <ScaleDenominator>0.5206859334845961</ScaleDenominator>" # 
"        <TopLeftCorner>-2.003750834E7 2.0037508E7</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>1073741824</MatrixWidth>" # 
"        <MatrixHeight>1073741824</MatrixHeight>" # 
"      </TileMatrix>" # 
"    </TileMatrixSet>" # 
"    <TileMatrixSet>" # 
"      <ows:Identifier>GlobalCRS84Scale</ows:Identifier>" # 
"      <ows:SupportedCRS>urn:ogc:def:crs:EPSG::4326</ows:SupportedCRS>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>GlobalCRS84Scale:0</ows:Identifier>" # 
"        <ScaleDenominator>5.0E8</ScaleDenominator>" # 
"        <TopLeftCorner>90.0 -180.0</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>2</MatrixWidth>" # 
"        <MatrixHeight>1</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>GlobalCRS84Scale:1</ows:Identifier>" # 
"        <ScaleDenominator>2.5E8</ScaleDenominator>" # 
"        <TopLeftCorner>90.0 -180.0</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>3</MatrixWidth>" # 
"        <MatrixHeight>2</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>GlobalCRS84Scale:2</ows:Identifier>" # 
"        <ScaleDenominator>1.0E8</ScaleDenominator>" # 
"        <TopLeftCorner>90.0 -180.0</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>6</MatrixWidth>" # 
"        <MatrixHeight>3</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>GlobalCRS84Scale:3</ows:Identifier>" # 
"        <ScaleDenominator>5.0E7</ScaleDenominator>" # 
"        <TopLeftCorner>90.0 -180.0</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>12</MatrixWidth>" # 
"        <MatrixHeight>6</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>GlobalCRS84Scale:4</ows:Identifier>" # 
"        <ScaleDenominator>2.5E7</ScaleDenominator>" # 
"        <TopLeftCorner>90.0 -180.0</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>23</MatrixWidth>" # 
"        <MatrixHeight>12</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>GlobalCRS84Scale:5</ows:Identifier>" # 
"        <ScaleDenominator>1.0E7</ScaleDenominator>" # 
"        <TopLeftCorner>90.0 -180.0</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>56</MatrixWidth>" # 
"        <MatrixHeight>28</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>GlobalCRS84Scale:6</ows:Identifier>" # 
"        <ScaleDenominator>5000000.0</ScaleDenominator>" # 
"        <TopLeftCorner>90.0 -180.0</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>112</MatrixWidth>" # 
"        <MatrixHeight>56</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>GlobalCRS84Scale:7</ows:Identifier>" # 
"        <ScaleDenominator>2500000.0</ScaleDenominator>" # 
"        <TopLeftCorner>90.0 -180.0</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>224</MatrixWidth>" # 
"        <MatrixHeight>112</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>GlobalCRS84Scale:8</ows:Identifier>" # 
"        <ScaleDenominator>1000000.0</ScaleDenominator>" # 
"        <TopLeftCorner>90.0 -180.0</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>560</MatrixWidth>" # 
"        <MatrixHeight>280</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>GlobalCRS84Scale:9</ows:Identifier>" # 
"        <ScaleDenominator>500000.0</ScaleDenominator>" # 
"        <TopLeftCorner>90.0 -180.0</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>1119</MatrixWidth>" # 
"        <MatrixHeight>560</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>GlobalCRS84Scale:10</ows:Identifier>" # 
"        <ScaleDenominator>250000.0</ScaleDenominator>" # 
"        <TopLeftCorner>90.0 -180.0</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>2237</MatrixWidth>" # 
"        <MatrixHeight>1119</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>GlobalCRS84Scale:11</ows:Identifier>" # 
"        <ScaleDenominator>100000.0</ScaleDenominator>" # 
"        <TopLeftCorner>90.0 -180.0</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>5591</MatrixWidth>" # 
"        <MatrixHeight>2796</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>GlobalCRS84Scale:12</ows:Identifier>" # 
"        <ScaleDenominator>50000.0</ScaleDenominator>" # 
"        <TopLeftCorner>90.0 -180.0</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>11182</MatrixWidth>" # 
"        <MatrixHeight>5591</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>GlobalCRS84Scale:13</ows:Identifier>" # 
"        <ScaleDenominator>25000.0</ScaleDenominator>" # 
"        <TopLeftCorner>90.0 -180.0</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>22364</MatrixWidth>" # 
"        <MatrixHeight>11182</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>GlobalCRS84Scale:14</ows:Identifier>" # 
"        <ScaleDenominator>10000.0</ScaleDenominator>" # 
"        <TopLeftCorner>90.0 -180.0</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>55909</MatrixWidth>" # 
"        <MatrixHeight>27955</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>GlobalCRS84Scale:15</ows:Identifier>" # 
"        <ScaleDenominator>5000.0</ScaleDenominator>" # 
"        <TopLeftCorner>90.0 -180.0</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>111817</MatrixWidth>" # 
"        <MatrixHeight>55909</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>GlobalCRS84Scale:16</ows:Identifier>" # 
"        <ScaleDenominator>2500.0</ScaleDenominator>" # 
"        <TopLeftCorner>90.0 -180.0</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>223633</MatrixWidth>" # 
"        <MatrixHeight>111817</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>GlobalCRS84Scale:17</ows:Identifier>" # 
"        <ScaleDenominator>1000.0</ScaleDenominator>" # 
"        <TopLeftCorner>90.0 -180.0</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>559083</MatrixWidth>" # 
"        <MatrixHeight>279542</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>GlobalCRS84Scale:18</ows:Identifier>" # 
"        <ScaleDenominator>500.0</ScaleDenominator>" # 
"        <TopLeftCorner>90.0 -180.0</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>1118165</MatrixWidth>" # 
"        <MatrixHeight>559083</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>GlobalCRS84Scale:19</ows:Identifier>" # 
"        <ScaleDenominator>250.0</ScaleDenominator>" # 
"        <TopLeftCorner>90.0 -180.0</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>2236330</MatrixWidth>" # 
"        <MatrixHeight>1118165</MatrixHeight>" # 
"      </TileMatrix>" # 
"      <TileMatrix>" # 
"        <ows:Identifier>GlobalCRS84Scale:20</ows:Identifier>" # 
"        <ScaleDenominator>100.0</ScaleDenominator>" # 
"        <TopLeftCorner>90.0 -180.0</TopLeftCorner>" # 
"        <TileWidth>256</TileWidth>" # 
"        <TileHeight>256</TileHeight>" # 
"        <MatrixWidth>5590823</MatrixWidth>" # 
"        <MatrixHeight>2795412</MatrixHeight>" # 
"      </TileMatrix>" # 
"    </TileMatrixSet>" # 
"  </Contents>" # 
"  <ServiceMetadataURL xlink:href=\"http://geoserver.geobrowser.ch/geoserver/gwc/service/wmts?SERVICE=wmts&amp;REQUEST=getcapabilities&amp;VERSION=1.0.0\"/>" # 
"  <ServiceMetadataURL xlink:href=\"http://geoserver.geobrowser.ch/geoserver/gwc/service/wmts/rest/WMTSCapabilities.xml\"/>" # 
"</Capabilities>";
}

}