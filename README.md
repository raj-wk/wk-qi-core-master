
# Quality Improvement Core Profiles (QI-Core)
This repository contains the source for the WK QI-Core implementation guide, which defines a set of FHIR profiles and extensions for use in clinical quality measurement and decision support. For now it is a copy of QI-Core and at some point in future plan to fork of QI-Core

## Local Build

The HL7 IG Publisher is committed to this repository to make building as easy as possible. To build locally, clone the repository and issue the following command in the root:

    java -jar "org.hl7.fhir.igpublisher.jar" -ig ig.json
