Feature: Requirement 41
  A legend shall be provided for each style and supported language defined in the View Service.
  !!!
  Requirement established in the guidance document [Technical Guidance for the
  implementation of INSPIRE View Services Version 3.1](http://inspire.jrc.ec.europa.eu/documents/Network_Services/TechnicalGuidance_ViewServices_v3.1.pdf) 
  for **view services** based on the international standard **ISO 19128**
  (**OGC WMS 1.3.0**). The applicable legislation is the [Commission Regulation (EC) nº 976/2009 (amended by Commission Regulation (EU)
  nº 1088/2010)](http://eur-lex.europa.eu/LexUriServ/LexUriServ.do?uri=CONSLEG:2009R0976:20101228:EN:HTML).

  Scenario: Check if every Style has a Title and a Unique Identifier
    Given the service's capabilities document
    And prefix wms is http://www.opengis.net/wms
    Then there is a wms:Name node in each wms:Style section
    And there is a wms:Title node in each wms:Style section
    And Name value is unique within Style sections
