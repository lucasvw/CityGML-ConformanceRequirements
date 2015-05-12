<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    <ns uri="http://www.opengis.net/gml" prefix="gml"/>
    <ns uri="http://www.opengis.net/citygml/building/2.0" prefix="bldg"/>
    <pattern>
        <rule context="bldg:Building | bldg:BuildingPart">
            <assert test="if (bldg:lod0FootPrint/descendant::gml:posList) then
                count(tokenize(bldg:lod0FootPrint/descendant::gml:posList
                /normalize-space(.),'\s+')) mod 3 = 0 else true()">
                <name/> with gml:id "<value-of select="@gml:id"/>" contains an 
                lod0FootPrint with non-3D geometry (number of coordinates in gml:posList 
                element is not a multiple of 3).
            </assert>
            <assert test="if (bldg:lod0FootPrint/descendant::gml:pos) then
                count(tokenize(bldg:lod0FootPrint/descendant::gml:pos/
                normalize-space(.),'\s+')) = 3 else true()">
                <name/> with gml:id "<value-of select="@gml:id"/>" contains an 
                lod0FootPrint with non-3D geometry (number of coordinates in gml:pos 
                element is not 3).
            </assert>
            <assert test="if (bldg:lod0RoofEdge/descendant::gml:posList) then
                count(tokenize(bldg:lod0RoofEdge/descendant::gml:posList/
                normalize-space(.),'\s+')) mod 3 = 0 else true()">
                <name/> with gml:id "<value-of select="@gml:id"/>" contains an 
                lod0RoofEdge with non-3D geometry (number of coordinates in gml:posList
                element is not a multiple of 3).
            </assert>
            <assert test="if (bldg:lod0RoofEdge/descendant::gml:pos) then
                count(tokenize(bldg:lod0RoofEdge/descendant::gml:pos/
                normalize-space(.),'\s+')) = 3 else true()">
                <name/> with gml:id "<value-of select="@gml:id"/>" contains an 
                lod0RoofEdge with non-3D geometry (number of coordinates in gml:pos 
                element is not 3).
            </assert>
        </rule>
    </pattern>
</schema>