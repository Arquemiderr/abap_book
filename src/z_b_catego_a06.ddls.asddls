@AbapCatalog.sqlViewName: 'ZV_CATEGO_A06'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Categoria'
define view z_b_catego_a06 as select from ztb_catego_a06
{
    key bi_categ   as Categoria,
        descipcion as Descipcion
}
