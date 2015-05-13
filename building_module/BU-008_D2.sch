<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    <ns uri="http://www.opengis.net/gml" prefix="gml"/>
    <ns uri="http://www.opengis.net/citygml/building/2.0" prefix="bldg"/>
    <pattern>
        <rule context="bldg:RoofSurface | bldg:WallSurface | bldg:GroundSurface | 
            bldg:ClosureSurface | bldg:CeilingSurface | bldg:InteriorWallSurface | 
            bldg:FloorSurface | bldg:OuterCeilingSurface | bldg:OuterFloorSurface">
            <assert test="if (descendant::bldg:Door/bldg:lod3MultiSurface |
                descendant::bldg:Window/bldg:lod3MultiSurface |
                descendant::bldg:Window/bldg:lod3ImplicitRepresentation |
                descendant::bldg:Door/bldg:lod3ImplicitRepresentation) then
                bldg:lod3MultiSurface else true()">
                <name/> with id: <value-of select="@gml:id"/> does not comprise of LoD3
                geometry, this is required when the opening property is used with LoD3.
            </assert>
            <assert test="if (descendant::bldg:Door/bldg:lod4MultiSurface |
                descendant::bldg:Window/bldg:lod4MultiSurface |
                descendant::bldg:Window/bldg:lod4ImplicitRepresentation |
                descendant::bldg:Door/bldg:lod4ImplicitRepresentation) then
                bldg:lod4MultiSurface else true()">
                <name/> with id: <value-of select="@gml:id"/> does not comprise of LoD4 
                geometry, this is required when the opening property is used with LoD4.
            </assert>
        </rule>
    </pattern>
</schema>