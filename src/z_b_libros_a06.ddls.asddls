@AbapCatalog.sqlViewName: 'ZV_LIBROS_A06'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Libros'
@Metadata.allowExtensions: true
define view z_b_Libros_a06
  as select from ztb_libros_a06
{

  key id_libro  as IdLibro,
  key big_categ as BigCateg,
      titulo    as Titulo,
      autor     as Autor,
      editorial as Editorial,
      idiomas   as Idiomas,
      paginas   as Paginas,
      precio    as Precio,
      moneda    as Moneda,
      formato   as Formato,
      url       as Url
}
