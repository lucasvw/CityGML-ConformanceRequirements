<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    <ns uri="http://www.opengis.net/gml" prefix="gml"/>
    <ns uri="http://www.opengis.net/citygml/building/2.0" prefix="bldg"/>
    <pattern>
        <rule context="bldg:Building">
            <assert test=" if (bldg:consistsOfBuildingPart/descendant::bldg:lod1Solid) 
                then (bldg:lod1Solid) else true()">
                <name/> with id:<value-of select="@gml:id"/> consists of a BuildingPart 
                with lod1Solid geometry but does not comprise itself of lod1Solid geometry
            </assert>
            <assert test=" if (bldg:consistsOfBuildingPart/descendant::bldg:lod1MultiSurface)
                then (bldg:lod1MultiSurface) else true()">
                <name/> with id:<value-of select="@gml:id"/> consists of a BuildingPart
                with lod1MultiSurface geometry but does not comprise itself of lod1MultiSurface geometry
            </assert>
            <assert test=" if (bldg:consistsOfBuildingPart/descendant::bldg:lod2Solid) then (bldg:lod2Solid) else true()">
                <name/> with id:<value-of select="@gml:id"/> consists of a BuildingPart with lod2Solid geometry but does not comprise itself of lod2Solid geometry
            </assert>
            <assert test=" if (bldg:consistsOfBuildingPart/descendant::bldg:lod2MultiSurface) then (bldg:lod2MultiSurface | bldg:boundedBy/descendant::bldg:lod2MultiSurface) else true()">
                <name/> with id:<value-of select="@gml:id"/> consists of a BuildingPart with lod2MultiSurface geometry but does not comprise itself of lod2MultiSurface geometry
            </assert>
            <assert test=" if (bldg:consistsOfBuildingPart/descendant::bldg:lod3Solid) then (bldg:lod3Solid) else true()">
                <name/> with id:<value-of select="@gml:id"/> consists of a BuildingPart with lod3Solid geometry but does not comprise itself of lod3Solid geometry
            </assert>
            <assert test=" if (bldg:consistsOfBuildingPart/descendant::bldg:lod3MultiSurface) then (bldg:lod3MultiSurface | bldg:boundedBy/descendant::bldg:lod3MultiSurface) else true()">
                <name/> with id:<value-of select="@gml:id"/> consists of a BuildingPart with lod3MultiSurface geometry but does not comprise itself of lod3MultiSurface geometry
            </assert>
            <assert test=" if (bldg:consistsOfBuildingPart/descendant::bldg:lod4Solid) then (bldg:lod4Solid) else true()">
                <name/> with id:<value-of select="@gml:id"/> consists of a BuildingPart with lod4Solid geometry but does not comprise itself of lod4Solid geometry
            </assert>
            <assert test=" if (bldg:consistsOfBuildingPart/descendant::bldg:lod4MultiSurface) then (bldg:lod4MultiSurface | bldg:boundedBy//descendant::bldg:lod4MultiSurface) else true()">
                <name/> with id:<value-of select="@gml:id"/> consists of a BuildingPart with lod4MultiSurface geometry but does not comprise itself of lod4MultiSurface geometry
            </assert>
        </rule>
    </pattern>
</schema>