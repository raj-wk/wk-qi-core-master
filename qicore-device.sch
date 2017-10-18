<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile US Core Implanted Device Profile
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Device</sch:title>
    <sch:rule context="f:Device">
      <sch:assert test="count(f:udi) &gt;= 1">udi: minimum cardinality of 'udi' is 1</sch:assert>
      <sch:assert test="count(f:udi) &lt;= 1">udi: maximum cardinality of 'udi' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Device</sch:title>
    <sch:rule context="f:Device">
      <sch:assert test="not(parent::f:contained and f:contained)">If the resource is contained in another resource, it SHALL NOT contain nested Resources</sch:assert>
      <sch:assert test="not(parent::f:contained and f:text)">If the resource is contained in another resource, it SHALL NOT contain any narrative</sch:assert>
      <sch:assert test="not(exists(f:contained/*/f:meta/f:versionId)) and not(exists(f:contained/*/f:meta/f:lastUpdated))">If a resource is contained in another resource, it SHALL NOT have a meta.versionId or a meta.lastUpdated</sch:assert>
      <sch:assert test="not(exists(for $id in f:contained/*/@id return $id[not(ancestor::f:contained/parent::*/descendant::f:reference/@value=concat('#', $id))]))">If the resource is contained in another resource, it SHALL be referred to from elsewhere in the resource</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Device/f:udi</sch:title>
    <sch:rule context="f:Device/f:udi">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:deviceIdentifier) &lt;= 1">deviceIdentifier: maximum cardinality of 'deviceIdentifier' is 1</sch:assert>
      <sch:assert test="count(f:name) &lt;= 1">name: maximum cardinality of 'name' is 1</sch:assert>
      <sch:assert test="count(f:jurisdiction) &lt;= 1">jurisdiction: maximum cardinality of 'jurisdiction' is 1</sch:assert>
      <sch:assert test="count(f:carrierHRF) &lt;= 1">carrierHRF: maximum cardinality of 'carrierHRF' is 1</sch:assert>
      <sch:assert test="count(f:carrierAIDC) &lt;= 1">carrierAIDC: maximum cardinality of 'carrierAIDC' is 1</sch:assert>
      <sch:assert test="count(f:issuer) &lt;= 1">issuer: maximum cardinality of 'issuer' is 1</sch:assert>
      <sch:assert test="count(f:entryType) &lt;= 1">entryType: maximum cardinality of 'entryType' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Device.udi</sch:title>
    <sch:rule context="f:Device/f:udi">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
