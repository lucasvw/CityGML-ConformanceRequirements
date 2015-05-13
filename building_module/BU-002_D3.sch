<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    <ns uri="http://www.opengis.net/gml" prefix="gml"/>
    <ns uri="http://www.opengis.net/citygml/building/2.0" prefix="bldg"/>
    <pattern>
        <rule context="bldg:Building | bldg:BuildingPart">
            <assert test="if (bldg:lod0FootPrint/descendant::gml:posList) then
                count(distinct-values(tokenize(bldg:lod0FootPrint/
                descendant::gml:posList/normalize-space(.),'\s+')
                [(position() mod 3) = 0])) = 1 else true()">
                <name/> with gml:id "<value-of select="@gml:id"/>" contains an 
                lod0FootPrint with non identical height values.
            </assert>
        </rule>
    </pattern>
</schema>