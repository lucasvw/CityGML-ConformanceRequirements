<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    <ns uri="http://www.opengis.net/gml" prefix="gml"/>
    <ns uri="http://www.opengis.net/citygml/building/1.0" prefix="bldg"/>
    <pattern>
        <rule context="bldg:RoofSurface | bldg:WallSurface | bldg:GroundSurface | 
            bldg:ClosureSurface | bldg:CeilingSurface | bldg:InteriorWallSurface | 
            bldg:FloorSurface | bldg:OuterCeilingSurface | bldg:OuterFloorSurface">
            <assert test="if (bldg:opening) then 
                bldg:lod3MultiSurface | bldg:lod4MultiSurface else true()">
                <name/> with id: <value-of select="@gml:id"/> shall not comprise of opening 
                elements because it does not have LoD 3 or LoD 4 geometry.
            </assert>
        </rule>
    </pattern>
</schema>
