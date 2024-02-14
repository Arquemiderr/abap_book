@AbapCatalog.sqlViewName: 'ZV_CLIENTES'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Clientes'
@Metadata.allowExtensions: true
@UI.headerInfo: {
    typeName: 'Cliente',
    typeNamePlural: 'Clientes',
    title: {
        type: #STANDARD,
        value: 'NombreCompleto'
    },
    description: {
        type: #STANDARD,
        value: 'IdCliente'
    },
    imageUrl : 'Imagen'
}
define view Z_B_CLIENTES_A06
  as select from ztb_clientes_a06 as clientes
  inner join ztb_clnts_lib_a6 as clnts on clnts.id_cliente = clientes.id_cliente
{
    //clnts
    key clnts.id_libro                         as IdLibros,
    //clientes
    key clientes.id_cliente                    as IdCliente,
    key clientes.tipo_acceso                   as TipoAcceso,
        clientes.nombre                        as Nombre,
        clientes.apellido                      as Apellido,
        clientes.email                         as Email,
        clientes.url                           as Imagen,
        concat_with_space(clientes.nombre, clientes.apellido, 1) as NombreCompleto
}
