@AbapCatalog.sqlViewName: 'zv_acc_categ_a6'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Acceso de Categoria'
define view z_b_acc_categ_a6
  as select from ztb_acc_categ_a6
{
    key bi_categ as BiCateg,
    key tipo_acceso as TipoAcceso
  }
