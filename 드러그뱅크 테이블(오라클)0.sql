 DECLARE
      --V_XMLSCHEMA XMLTYPE := xmltype(bfilename('&USERNAME', 'drugbank.xsd'),nls_charset_id('AL32UTF8'));
      V_XMLSCHEMA XMLTYPE := xmltype(bfilename('PHARMA', 'drugbank.xsd'),nls_charset_id('AL32UTF8'));
    BEGIN
            DBMS_XMLSCHEMA_ANNOTATE.disableDefaultTableCreation(V_XMLSCHEMA);
            DBMS_XMLSCHEMA_ANNOTATE.disableMaintainDOM(V_XMLSCHEMA);
            DBMS_XMLSCHEMA_ANNOTATE.setSQLType(V_XMLSCHEMA,DBMS_XDB_CONSTANTS.XSD_COMPLEX_TYPE,'BondType',DBMS_XDB_CONSTANTS.XSD_ELEMENT,'references','CLOB',TRUE);
            DBMS_XMLSCHEMA_ANNOTATE.setSQLType(V_XMLSCHEMA,DBMS_XDB_CONSTANTS.XSD_COMPLEX_TYPE,'PartnerType',DBMS_XDB_CONSTANTS.XSD_ELEMENT,'references','CLOB',TRUE);
            DBMS_XMLSCHEMA_ANNOTATE.setSQLType(V_XMLSCHEMA,DBMS_XDB_CONSTANTS.XSD_COMPLEX_TYPE,'DrugType',DBMS_XDB_CONSTANTS.XSD_ELEMENT,'general-references','CLOB',TRUE);
            DBMS_XMLSCHEMA_ANNOTATE.setSQLType(V_XMLSCHEMA,DBMS_XDB_CONSTANTS.XSD_COMPLEX_TYPE,'SequenceType',DBMS_XDB_CONSTANTS.XSD_ELEMENT,'chain','CLOB',TRUE);
     DBMS_XMLSCHEMA.registerSchema(
         SCHEMAURL => :SCHEMAURL,
         SCHEMADOC => V_XMLSCHEMA,
         LOCAL     => TRUE,
         GENTYPES  => TRUE,
         GENTABLES => TRUE);
   END;
   /
old   2:   V_XMLSCHEMA XMLTYPE := xmltype(bfilename('&USERNAME', 'drugbank.xsd'),nls_charset_id('AL32UTF8'));
new   2:   V_XMLSCHEMA XMLTYPE := xmltype(bfilename('PHARMA', 'drugbank.xsd'),nls_charset_id('AL32UTF8'));

PL/SQL procedure successfully completed.

Elapsed: 00:00:01.65
SQL> CREATE TABLE drugs_xmltype OF XMLTYPE
  2  XMLSCHEMA "http://lims.drugbank.ca/docs/drugbank.xsd"
  3  ELEMENT "drugs"
  4  /
