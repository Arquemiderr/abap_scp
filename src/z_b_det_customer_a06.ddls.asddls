@AbapCatalog.sqlViewName: 'ZV_DET_CUSTL_A06'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Details Customers'
@Metadata.allowExtensions: true
define view z_b_det_customer_a06 as select from zrent_a06_custom
{
    //zrent_customers_a06
    key doc_id as ID,
    key matricula as Matricula,
    nombres as Nombre,
    apellidos as Apellido,
    email as Correo,
    cntr_type as TipoContrato
}
