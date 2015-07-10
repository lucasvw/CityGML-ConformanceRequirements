<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    <ns uri="http://www.opengis.net/gml" prefix="gml"/>
    <ns uri="http://www.opengis.net/citygml/building/2.0" prefix="bldg"/>
    <pattern>
        <rule context="bldg:Building">
            <assert test=" if (descendant::bldg:BuildingPart/bldg:lod1Solid or
                descendant::bldg:BuildingPart/bldg:lod1MultiSurface or
                descendant::bldg:BuildingPart/bldg:lod2Solid or 
                descendant::bldg:BuildingPart/bldg:lod2MultiSurface or
                descendant::bldg:BuildingPart/bldg:boundedBy/
                descendant::bldg:lod2MultiSurface or
                descendant::bldg:BuildingPart/bldg:lod3Solid or 
                descendant::bldg:BuildingPart/bldg:lod3MultiSurface or 
                descendant::bldg:BuildingPart/bldg:boundedBy/
                descendant::bldg:lod3MultiSurface or
                descendant::bldg:BuildingPart/bldg:lod4Solid or
                descendant::bldg:BuildingPart/bldg:lod4MultiSurface or 
                descendant::bldg:BuildingPart/bldg:boundedBy/
                descendant::bldg:lod4MultiSurface) 
                then (bldg:lod1Solid or bldg:lod1MultiSurface or 
                bldg:lod2Solid or bldg:lod2MultiSurface or
                bldg:boundedBy/descendant::bldg:lod2MultiSurface or
                bldg:lod3Solid or bldg:lod3MultiSurface or
                bldg:boundedBy/descendant::bldg:lod3MultiSurface or
                bldg:lod4Solid or bldg:lod4MultiSurface or 
                bldg:boundedBy//descendant::bldg:lod4MultiSurface)
                else true()">   
                <name/> with id:<value-of select="@gml:id"/> consists of a BuildingPart 
                with geometry but does not comprise itself of geometry
            </assert>
        </rule>
    </pattern>
</schema>