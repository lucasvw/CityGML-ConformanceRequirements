<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    <ns uri="http://www.opengis.net/gml" prefix="gml"/>
    <ns uri="http://www.opengis.net/citygml/building/2.0" prefix="bldg"/>
    <pattern>
        <rule context="bldg:BuildingPart | bldg:Building">
            <assert test="if (bldg:interiorBuildingInstallation) then  
                bldg:lod4Solid or
                bldg:lod4MultiSurface or
                bldg:boundedBy/descendant::bldg:lod4MultiSurface else true()">
                <name/> with id:<value-of select="@gml:id"/> does not comprise of LoD 4
                geometry, this is required when the interiorBuildingInstallation
                property is used.
            </assert>
        </rule>
    </pattern>
</schema>