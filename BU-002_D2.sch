<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    <ns uri="http://www.opengis.net/gml" prefix="gml"/>
    <ns uri="http://www.opengis.net/citygml/building/2.0" prefix="bldg"/>
    <pattern>
        <rule context="bldg:Building | bldg:BuildingPart">
            <assert test="if (bldg:lod0FootPrint/descendant::gml:posList/
                @srsDimension) then bldg:lod0FootPrint/descendant::gml:posList/
                @srsDimension = '3' else true()">
                <name/> with gml:id "<value-of select="@gml:id"/>" contains an
                lod0FootPrint with non-3D geometry (srsDimension attribute does not equal 3).
            </assert>
            <assert test="if (bldg:lod0FootPrint/descendant::gml:pos/
                @srsDimension) then bldg:lod0FootPrint/descendant::gml:pos/
                @srsDimension = '3' else true()">
                <name/> with gml:id "<value-of select="@gml:id"/>" contains an 
                lod0FootPrint with non-3D geometry (srsDimension attribute does not equal 3).
            </assert>
            <assert test="if (bldg:lod0RoofEdge/descendant::gml:posList/
                @srsDimension) then bldg:lod0RoofEdge/descendant::gml:posList/
                @srsDimension = '3' else true()">
                <name/> with gml:id "<value-of select="@gml:id"/>" contains an 
                lod0RoofEdge with non-3D geometry (srsDimension attribute does not equal 3).
            </assert>
            <assert test="if (bldg:lod0RoofEdge/descendant::gml:pos/
                @srsDimension) then bldg:lod0RoofEdge/descendant::gml:pos/
                @srsDimension = '3' else true()">
                <name/> with gml:id "<value-of select="@gml:id"/>" contains an 
                lod0RoofEdge with non-3D geometry (srsDimension attribute does not equal 3).
            </assert>
        </rule>
    </pattern>
</schema>