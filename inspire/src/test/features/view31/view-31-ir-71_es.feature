#language:es
Característica: Requisito 71
  La sección Extended Capabilities debe contener la lista de idiomas soportados indicados en <inspire_common:SupportedLanguages>.
  Esta lista de idiomas soportados debe consistir en:
  1. Exactamente un elemento <inspire_common:DefaultLanguage> indicando el idioma por defecto del servicio
  2. Cero o más elementos <inspire_common:SupportedLanguage> para indicar todos los idiomas adicionales soportados.
     Independientemente del idioma de la respuesta, la lista de idiomas soportados es fija para cada respuesta *GetCapabilities*.
  !!!
  Requisito establecido en el documento guía [Guía Técnica para la Implementación de los Servicios
  de Visualización Versión 3.1](http://inspire.jrc.ec.europa.eu/documents/Network_Services/TechnicalGuidance_ViewServices_v3.1.pdf) 
  para **servicios de visualización** basados en el estándar internacional **ISO 19128**
  (**OGC WMS 1.3.0**). La legislación aplicable es el [Reglamento (CE) nº 976/2009 de la Comisión (modificado por el Reglamento (UE) nº 1088/2010
  de la Comisión)](http://eur-lex.europa.eu/LexUriServ/LexUriServ.do?uri=CONSLEG:2009R0976:20101228:ES:HTML).

  Escenario: Debe existir una declaración del idioma por defecto DefaultLanguage
    Dado el documento de capabilities del servicio
    Y la URI para el prefijo inspire_common es http://inspire.ec.europa.eu/schemas/common/1.0
    Entonces existe un nodo inspire_common:Language en la sección inspire_common:DefaultLanguage

  Escenario: There is a Language declaration inside each SupportedLanguage delcaration
    Dado el documento de capabilities del servicio
    Y la URI para el prefijo inspire_common es http://inspire.ec.europa.eu/schemas/common/1.0
    Cuando exista un nodo inspire_common:SupportedLanguage en la sección inspire_common:SupportedLanguages
    Entonces existe un nodo inspire_common:Language en cada sección inspire_common:SupportedLanguage
