<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    <ns uri="http://www.opengis.net/gml" prefix="gml"/>
    <ns uri="http://www.opengis.net/citygml/building/2.0" prefix="bldg"/>
    <pattern>
        <rule context="bldg:IntBuildingInstallation">
            <report test="bldg:boundedBy/bldg:RoofSurface">
                <name/> with id:<value-of select="@gml:id"/> consists of a RoofSurface
                element with id: <value-of select="bldg:boundedBy/
                    bldg:RoofSurface/@gml:id"/>, this is not allowed
            </report>
            <report test="bldg:boundedBy/bldg:WallSurface">
                <name/> with id:<value-of select="@gml:id"/> consists of a WallSurface 
                element with id: <value-of select="bldg:boundedBy/
                    bldg:WallSurface/@gml:id"/>, this is not allowed
            </report>
            <report test="bldg:boundedBy/bldg:GroundSurface">
                <name/> with id:<value-of select="@gml:id"/> consists of a GroundSurface 
                elementwith id: <value-of select="bldg:boundedBy/
                    bldg:GroundSurface/@gml:id"/>, this is not allowed
            </report>
            <report test="bldg:boundedBy/bldg:OuterCeilingSurface">
                <name/> with id:<value-of select="@gml:id"/> consists of a OuterCeilingSurface 
                element with id: <value-of select="bldg:boundedBy/
                    bldg:OuterCeilingSurface/@gml:id"/>, this is not allowed
            </report>
            <report test="bldg:boundedBy/bldg:OuterFloorSurface">
                <name/> with id:<value-of select="@gml:id"/> consists of a OuterFloorSurface 
                element with id: <value-of select="bldg:boundedBy/
                    bldg:OuterFloorSurface/@gml:id"/>, this is not allowed
            </report>
        </rule>
    </pattern>
</schema>