<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    <ns uri="http://www.opengis.net/gml" prefix="gml"/>
    <ns uri="http://www.opengis.net/citygml/building/2.0" prefix="bldg"/>
    <pattern>
        <rule context="bldg:BuildingPart | bldg:Building">
            <report test="bldg:boundedBy/bldg:CeilingSurface">
                <name/> with id:<value-of select="@gml:id"/> consists of a CeilingSurface
                element with id: <value-of select="bldg:boundedBy/
                    bldg:CeilingSurface/@gml:id"/>, this is not allowed
            </report>
            <report test="bldg:boundedBy/bldg:InteriorWallSurface">
                <name/> with id:<value-of select="@gml:id"/> consists of an InteriorWallSurface
                element with id: <value-of select="bldg:boundedBy/
                    bldg:InteriorWallSurface/@gml:id"/>, this is not allowed
            </report>
            <report test="bldg:boundedBy/bldg:FloorSurface">
                <name/> with id:<value-of select="@gml:id"/> consists of a FloorSurface 
                element with id: <value-of select="bldg:boundedBy/
                    bldg:FloorSurface/@gml:id"/>, this is not allowed
            </report>
        </rule>
    </pattern>
</schema>