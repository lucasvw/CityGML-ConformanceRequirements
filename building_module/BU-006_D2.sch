<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    <ns uri="http://www.opengis.net/gml" prefix="gml"/>
    <ns uri="http://www.opengis.net/citygml/building/2.0" prefix="bldg"/>
    <pattern>
        <rule context="bldg:BuildingPart | bldg:Building">
            <assert test="if (bldg:outerBuildingInstallation/
                descendant::bldg:lod2Geometry or bldg:outerBuildingInstallation/
                descendant::bldg:lod2ImplicitRepresentation ) then 
                bldg:lod2Solid or 
                bldg:lod2MultiSurface or 
                bldg:boundedBy/descendant::bldg:lod2MultiSurface else true()">
                <name/> with id:<value-of select="@gml:id"/> does not comprise of geometry 
                of LoD 2, this is required when the outerBuildingInstallation property uses 
                LoD 2 geometry.
            </assert>
            <assert test="if (child::bldg:outerBuildingInstallation/
                descendant::bldg:lod3Geometry or bldg:outerBuildingInstallation/
                descendant::bldg:lod3ImplicitRepresentation ) then 
                bldg:lod3Solid or 
                bldg:lod3MultiSurface or 
                bldg:boundedBy/descendant::bldg:lod3MultiSurface else true()">
                <name/> with id:<value-of select="@gml:id"/> does not comprise of geometry 
                of LoD 3, this is required when the outerBuildingInstallation uses 
                LoD 3 geometry.
            </assert>
            <assert test="if (child::bldg:outerBuildingInstallation/
                descendant::bldg:lod4Geometry or bldg:outerBuildingInstallation/
                descendant::bldg:lod4ImplicitRepresentation) then 
                bldg:lod4Solid or 
                bldg:lod4MultiSurface or 
                bldg:boundedBy/descendant::bldg:lod4MultiSurface else true()">
                <name/> with id:<value-of select="@gml:id"/> does not comprise of geometry 
                of LoD 4, this is required when the outerBuildingInstallation uses
                LoD 4 geometry.
            </assert>  
        </rule>
    </pattern>
</schema>