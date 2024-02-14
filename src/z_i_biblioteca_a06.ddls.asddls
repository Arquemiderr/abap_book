@AbapCatalog.sqlViewName: 'ZV_BIBLIOTECA_A6'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Biblioteca'
@Search.searchable: true
@Metadata.allowExtensions: true
@UI.headerInfo: {
    typeName: 'Libro',
    typeNamePlural: 'Libros',
    title: {
        type: #STANDARD,
        value: 'Titulo' },
    description: {
        type: #STANDARD,
        value: 'Titulo' },

    imageUrl : 'Imagen' 
}
define view z_i_biblioteca_a06
  as select from    ztb_libros_a06 as Libros
    inner join      ztb_catego_a06  as Catego on Libros.big_categ = Catego.bi_categ
    left outer join Z_B_CLNTS_LIB_A6 as Ventas on Libros.id_libro = Ventas.IdLibro
  association [0..*] to Z_B_CLIENTES_A06 as _Clientes on $projection.IdLibro = _Clientes.IdLibros
{
  key Libros.id_libro    as IdLibro,
  key Libros.big_categ   as Categoria,
      Libros.titulo     as Titulo,
      Libros.autor      as Autor,
      Libros.editorial  as Editorial,
      Libros.idiomas    as Idiomas,
      Libros.paginas    as Paginas,
      @Semantics.amount.currencyCode: 'moneda'
      Libros.precio     as Precio,
      case
      when Ventas.Ventas < 1 then 0
      when Ventas.Ventas = 1 then 1
      when Ventas.Ventas = 2 then 2
      when Ventas.Ventas > 2 then 3
      else 0
      end               as Ventas,
      case Ventas.Ventas
      when 0 then ''
      else ''
      end as Text,
      @Semantics.currencyCode
      Libros.moneda     as Moneda,
      Libros.formato    as Formato,
      Libros.url        as Imagen,
      Catego.descipcion as Descipcion,
      _Clientes
}
