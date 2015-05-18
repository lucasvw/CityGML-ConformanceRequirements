# CityGML-ConformanceRequirements

*One-sentence summary:*
Public repository containing Schematron formalized conformance requirements for the building module of CityGML. 



Each CityGML instance document should conform to the conformance requirements of the CityGML specification. However, they are stated in natural language and therefore not directly testable. In my master thesis, I have tried to convert these conformance requirements as stated in the specification into testable scripts. Because most requirements act on the XML structure of CityGML, Schematron is an excellent candidate for this purpose. Schematron can be validated with tools like Oxygen or by means of XSL transformation with the Schematron skeleton to be found at the official (?) Schematron website: http://www.schematron.com/

These scripts are the result of my master thesis and only partly related to the definitions and formalizations of the OGC Quality Interoperability Experiment (in which I also took part). The main difference between the QIE interpretation and my own interpretation is in the definition of LoD. It resolves basically around the question: *When does a building consists of a certain LoD?*. In my opinion this is determined by the various lodXMultiSurface and lodXSolid **direct** properties of the building or buildingpart element. In the opinion of most of the QIE members it can also be that a building or buildingpart element consists of lodXMultiSurface geometry indirectly referenced over the boundedBy property. Although there is no public repo of the QIE schemas I guess this only has an influence on BU-004_D2, BU-005_D2, BU-006-D2, BU-009_D1 and BU-010_D1.

These Schemas are meant for CityGML 2.0 but if CityGML 1.0 needs to be validated just change the namespace declaration from *http://www.opengis.net/citygml/building/2.0* to *http://www.opengis.net/citygml/building/1.0*

For questions, reach me at lvanwalstijn (at) virtualcitysystems.de