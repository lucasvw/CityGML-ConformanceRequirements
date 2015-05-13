<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    <ns uri="http://www.opengis.net/gml" prefix="gml"/>
    <ns uri="http://www.opengis.net/citygml/building/2.0" prefix="bldg"/>
    <pattern>
        <rule context="bldg:Room">
            <report test="bldg:boundedBy/descendant::bldg:lod2MultiSurface">
                <name/> with id:<value-of select="@gml:id"/> comprises of LoD 2 geometry 
                under a boundary surface, this is not allowed
            </report>
            <report test="bldg:boundedBy/descendant::bldg:lod3MultiSurface">
                <name/> with id:<value-of select="@gml:id"/> comprises of LoD 3 geometry 
                under a boundary surface, this is not allowed
            </report>
        </rule>
    </pattern>
</schema>