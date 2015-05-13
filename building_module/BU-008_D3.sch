<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    <ns uri="http://www.opengis.net/gml" prefix="gml"/>
    <ns uri="http://www.opengis.net/citygml/building/2.0" prefix="bldg"/>
    <pattern>
        <rule context="bldg:RoofSurface | bldg:WallSurface | bldg:GroundSurface | 
            bldg:ClosureSurface | bldg:CeilingSurface | bldg:InteriorWallSurface | 
            bldg:FloorSurface | bldg:OuterCeilingSurface | bldg:OuterFloorSurface">
            <report test="bldg:lod2MultiSurface/descendant::gml:interior">
                <name/> with id: <value-of select="@gml:id"/> comprises of 
                LoD 2 geometry with interior rings, this is prohibited
            </report>
        </rule>
    </pattern>
</schema>
