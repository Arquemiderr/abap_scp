@AbapCatalog.sqlViewName: 'ZV_REITL_A06'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Remainig'
@Metadata.allowExtensions: true
define view z_i_renting_a06
  as select from Z_B_CARS_A06 as Cars
  association [1]    to z_b_rem_days_a06     as _RemDays     on Cars.Matricula = _RemDays.Matricula
  association [0..*] to z_b_brands_a06       as _Brands      on Cars.Marca = _Brands.Marca
  association [0..*] to z_b_det_customer_a06 as _DetCustomer on Cars.Matricula = _DetCustomer.Matricula
{
  key Matricula,
      Marca,
      Modelo,
      Color,
      Motor,
      Potencia,
      Unidad,
      Combustible,
      Consumo,
      FechaFabricacion,
      Puertas,
      Precio,
      Moneda,
      Alquilado,
      Desde,
      Hasta,
      //          0 neutral grey
      //          1 negative red
      //          2 critical yellow
      //          3 positive green
      case
        when _RemDays.Dias <= 0 then 0
        when _RemDays.Dias between 1 and 30 then 1
        when _RemDays.Dias between 31 and 100 then 2
        when _RemDays.Dias > 100 then 3
        else 0
      end as TiempoRenta,
      '' as Estado,
      _Brands.Imagen,
      _DetCustomer
}
