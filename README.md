# CityGML-ConformanceRequirements

Each CityGML instance document should conform to the conformance requirements of the CityGML specification. However, they are stated in natural language and therefore not directly testable. In my master thesis, I have tried to convert these conformance requirements as stated in the specification into testable scripts. Because most requirements act on the XML structure of CityGML, Schematron is an excellent candidate for this purpose. Schematron can be validated with tools like Oxygen or by means of XSL transformation with the Schematron skeleton to be found at the official (?) Schematron website: http://www.schematron.com/

These scripts are the result of my master thesis and only partly related to the definitions and formalizations of the OGC Quality Interoperability Experiment (in which I also took part).

These Schemas are meant for CityGML 2.0 but if CityGML 1.0 needs to be validated just change the namespace declaration from *http://www.opengis.net/citygml/building/2.0* to *http://www.opengis.net/citygml/building/1.0*

