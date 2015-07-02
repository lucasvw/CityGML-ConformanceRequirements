<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    <ns uri="http://www.opengis.net/gml" prefix="gml"/>
    <ns uri="http://www.opengis.net/citygml/building/2.0" prefix="bldg"/>
    <pattern>
        <rule context="bldg:BuildingPart | bldg:Building">
            <assert test="if (bldg:outerBuildingInstallation) then
                bldg:lod2MultiSurface | bldg:lod2Solid |
                bldg:lod3MultiSurface | bldg:lod3Solid |
                bldg:lod4MultiSurface | bldg:lod4Solid |
                bldg:boundedBy/descendant::bldg:lod2MultiSurface |
                bldg:boundedBy/descendant::bldg:lod3MultiSurface |
                bldg:boundedBy/descendant::bldg:lod4MultiSurface
                else true()">
                <name/> with id: <value-of select="@gml:id"/> comprises of outerBuildingInstallation
                property and should accordingly consist of lodXSolid or lodXMultiSurface 
                direct properties with X={2,3,4}
            </assert>
        </rule>
    </pattern>
</schema>