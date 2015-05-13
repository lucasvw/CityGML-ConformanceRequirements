<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    <ns uri="http://www.opengis.net/gml" prefix="gml"/>
    <ns uri="http://www.opengis.net/citygml/building/2.0" prefix="bldg"/>
    <pattern>
        <rule context="bldg:BuildingPart | bldg:Building">
            <assert test="if (bldg:boundedBy/descendant::bldg:lod2MultiSurface) then 
                bldg:lod2MultiSurface or bldg:lod2Solid else true()">
                <name/> with id: <value-of select="@gml:id"/> consists of boundary surfaces 
                with LoD 2 geometry but <name/> does not consist of LoD 2 geometry 
                (lod2MultiSurface or lod2Solid as direct properties)
            </assert>
            <assert test="if (bldg:boundedBy/descendant::bldg:lod3MultiSurface) then 
                bldg:lod3MultiSurface or bldg:lod3Solid else true()">
                <name/> with id: <value-of select="@gml:id"/> consists of boundary surfaces 
                with LoD 3 geometry but <name/> does not consist of LoD 3 geometry 
                (lod3MultiSurface or lod4Solid as direct properties)
            </assert>
            <assert test="if (bldg:boundedBy/descendant::bldg:lod4MultiSurface) then 
                bldg:lod4MultiSurface or bldg:lod4Solid else true()">
                <name/> with id: <value-of select="@gml:id"/> consists of boundary surfaces 
                with LoD 4 geometry but <name/> does not consist of LoD 4 geometry 
                (lod4MultiSurface or lod4Solid as direct properties)
            </assert>
        </rule>
    </pattern>
</schema>