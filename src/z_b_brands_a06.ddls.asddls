@AbapCatalog.sqlViewName: 'ZV_BRANDS_A06'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Brands'
define view z_b_brands_a06
  as select from zrent_a06_brands
{
  key marca as Marca,
      @UI.hidden: true
      url   as Imagen
}
