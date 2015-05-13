<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    <ns uri="http://www.opengis.net/gml" prefix="gml"/>
    <ns uri="http://www.opengis.net/citygml/building/2.0" prefix="bldg"/>
    <pattern>
        <rule context="bldg:BuildingInstallation">
            <assert test="if (bldg:boundedBy/descendant::bldg:lod2MultiSurface) then 
                bldg:lod2Geometry | bldg:lod2ImplicitGeometry
                else true()">
                <name/> with id:<value-of select="@gml:id"/>  consists of boundary surfaces
                with LoD 2 geometry but <name/> does not consist of LoD 2 geometry
                (lod2Geometry or lod2ImplicitGeometry as direct properties)
            </assert>
            <assert test="if (bldg:boundedBy/descendant::bldg:lod3MultiSurface) then 
                bldg:lod3Geometry | bldg:lod3ImplicitGeometry
                else true()">
                <name/> with id:<value-of select="@gml:id"/>  consists of boundary surfaces
                with LoD 3 geometry but <name/> does not consist of LoD 3 geometry
                (lod3Geometry or lod3ImplicitGeometry as direct properties) 
            </assert>
            <assert test="if (bldg:boundedBy/descendant::bldg:lod4MultiSurface) then 
                bldg:lod4Geometry | bldg:lod4ImplicitGeometry
                else true()">
                <name/> with id:<value-of select="@gml:id"/>  consists of boundary surfaces
                with LoD 4 geometry but <name/> does not consist of LoD 4 geometry
                (lod4Geometry or lod4ImplicitGeometry as direct properties)
            </assert>
        </rule>
    </pattern>
</schema>