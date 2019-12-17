$(document).ready(() => {    
    console.info('NOTAS: JQuery is ready.');
    const url = 'notas.htm';
        
    function Listar() {
        $.post(url, {op: 'listar'}, resp => {
            const datos = JSON.parse(resp);
            console.log('NOTAS : ', datos);
            $('#tblNotas').dataTable().fnDestroy();
            let template = '';
            datos.forEach(elem => {                              
                template += `
                        <tr>
                                <td>${elem.idperiodo}</td>
                                <td>${elem.curso}</td>
                                <td>${elem.alumno}</td>
                                <td>${elem.nota}</td>
                                <td>
                                    <button class="btn btn-primary">
                                        <i class="fas fa-info"></i>
                                    </button>
                                </td>
                            </tr>
                        `;
            });
            $('#tbody').html(template);
            $('#tblNotas').dataTable({
                "lengthMenu": [[5, 10, 25, 50, -1], [5, 10, 25, 50, "TODO"]],
                language: idioma_es
            });
        });
    }

    Listar(true);
    
    //CDN DATATABLE - IDIOMA
    var idioma_es = {
        "sProcessing": "Procesando...",
        "sLengthMenu": "Ver :  _MENU_ Fila(s)",
        "sZeroRecords": "No se encontraron resultados",
        "sEmptyTable": "Ningún dato disponible en esta tabla",
        "sInfo": "",
        "sInfoEmpty": "Ningún registro.",
        "sInfoFiltered": "(filtrado de un total de _MAX_ registros)",
        "sInfoPostFix": "",
        "sSearch": "| BUSCAR :",
        "sUrl": "",
        "sInfoThousands": ",",
        "sLoadingRecords": "Cargando...",
        "oPaginate": {
            "sFirst": "Primero",
            "sLast": "Último",
            "sNext": "▶",
            "sPrevious": "◀"
        },
        "oAria": {
            "sSortAscending": ": Activar para ordenar la columna de manera ascendente",
            "sSortDescending": ": Activar para ordenar la columna de manera descendente"
        }
    };
});