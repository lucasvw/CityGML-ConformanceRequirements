<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    <ns uri="http://www.opengis.net/gml" prefix="gml"/>
    <ns uri="http://www.opengis.net/citygml/building/1.0" prefix="bldg"/>
    <pattern>
        <rule context="bldg:BuildingPart">
            <assert test="ancestor::*[name()='bldg:Building']">
                BuildingPart with id <value-of select="@gml:id"/> has no Building as ancestor
            </assert>
        </rule>
    </pattern>
</schema>