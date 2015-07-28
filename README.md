# CityGML-ConformanceRequirements

Public repository containing Schematron formalized conformance requirements for the building module of CityGML. 

Each CityGML instance document should conform to the conformance requirements of the CityGML specification. However, they are stated in natural language and therefore not directly testable. In my master thesis, I have tried to convert these conformance requirements as stated in the specification into testable scripts. Because most requirements act on the XML structure of CityGML, Schematron is an excellent candidate for this purpose. Schematron can be validated with tools like Oxygen or by means of XSL transformation with the Schematron skeleton to be found at the official (?) Schematron website: http://www.schematron.com/

For questions, reach me at lvanwalstijn (at) virtualcitysystems.de
