<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    <ns uri="http://www.opengis.net/gml" prefix="gml"/>
    <ns uri="http://www.opengis.net/citygml/building/1.0" prefix="bldg"/>
    <pattern>
        <rule context="bldg:BuildingPart | bldg:Building">
            <report test="bldg:lod1Solid and bldg:lod1MultiSurface">
                <name/> with id:<value-of select="@gml:id"/> consists of both Solid 
                and MultiSurface LoD1 geometry, this is not allowed.
            </report>
        </rule>
    </pattern>
</schema>