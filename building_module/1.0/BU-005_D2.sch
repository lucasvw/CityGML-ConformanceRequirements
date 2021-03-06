<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    <ns uri="http://www.opengis.net/gml" prefix="gml"/>
    <ns uri="http://www.opengis.net/citygml/building/1.0" prefix="bldg"/>
    <pattern>
        <rule context="bldg:BuildingPart | bldg:Building">
            <assert test="if (bldg:lod2MultiCurve) then
                bldg:lod2Solid | bldg:lod2MultiSurface |
                bldg:boundedBy/descendant::bldg:lod2MultiSurface
                else true()">
                <name/> with id:<value-of select="@gml:id"/> does not comprise of geometry 
                of LoD 2 or higher, this is required when the lod2MultiCurve property is used
            </assert>
            <assert test="if (child::bldg:lod3MultiCurve) then 
                bldg:lod3Solid | bldg:lod3MultiSurface |
                bldg:boundedBy/descendant::bldg:lod3MultiSurface
                else true()">
                <name/> with id:<value-of select="@gml:id"/> does not comprise of geometry 
                of LoD 3 or higher, this is required when the lod3MultiCurve property is used
            </assert>
            <assert test="if (child::bldg:lod4MultiCurve) then
                bldg:lod4Solid | bldg:lod4MultiSurface |
                bldg:boundedBy/descendant::bldg:lod4MultiSurface
                else true()">
                <name/> with id:<value-of select="@gml:id"/> does not comprise of geometry 
                of LoD 4 or higher, this is required when the lod4MultiCurve property is used
            </assert>
        </rule>
    </pattern>
</schema>