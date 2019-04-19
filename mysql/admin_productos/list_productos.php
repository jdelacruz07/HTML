<?php session_start();
?>
<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />

    <title>Visor Productos</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="http://netdna.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="http://cdn.datatables.net/plug-ins/f2c75b7247b/integration/bootstrap/3/dataTables.bootstrap.css">
    <script type="text/javascript" language="javascript" src="//cdn.datatables.net/1.10.5/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" language="javascript" src="http://cdn.datatables.net/plug-ins/f2c75b7247b/integration/bootstrap/3/dataTables.bootstrap.js"></script>

  </head>
 
<body>


<div class="container-fluid">

	  <table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%" style="font-size: 13px;">
				<thead>
					<tr>
						<th>Id Producto</th><th>Nombre</th><th>Precio Unidad</th><th>Nombre Empresa</th><th>Contacto</th><th>Cif</th><th>Ver detalles</th>
					</tr>
				</thead>

				<tfoot>
					<tr>
						<th>Id Producto</th><th>Nombre</th><th>Precio Unidad</th><th>Nombre Empresa</th><th>Contacto</th><th>Cif</th><th>Ver detalles</th>
					</tr>
				</tfoot>
			</table>
    </div>
	
	<script type="text/javascript" charset="utf-8">

	$(document).ready(function() {
		var table = $('#example').dataTable( {
			"order": [[ 1, "desc" ]],
			"ajax": "get_productos.php",
			"language": {
				"emptyTable": "Sin datos"
			},
			"aoColumnDefs": [ {
			  "aTargets": [ 6 ],
			  "mData": "download_link",
			  "mRender": function(data, type, full) {
				return '<a class="btn btn-info btn-sm" href="show_producto.php?id_producto=' + full[0] + '">Ver detalle</a>';
			  }
			}]
		
		} );
 
	} );
	
    </script>
	
		
  </body>
</html>