@AbapCatalog.sqlViewName: 'ZV_CLNTS_LIB_A6'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Clientes Libros'
define view Z_B_CLNTS_LIB_A6 as select from ztb_clnts_lib_a6
{
    key id_libro as IdLibro,
        count(distinct id_cliente) as Ventas
}
group by id_libro
