<?php 
// Conectarse a y seleccionar una base de datos de MySQL llamada mi_empresa
// Nombre de host: 127.0.0.1, nombre de usuario: tu_usuario, contraseña: tu_contraseña, bd: mi_empresa
$mysqli = new mysqli('127.0.0.1', 'root', '123456', 'mi_empresa');

//en caso de error entra aquí
if ($mysqli->connect_errno) {
    echo "Lo sentimos, este sitio web está experimentando problemas.";
    echo "Error: Fallo al conectarse a MySQL debido a: \n";
    echo "Errno: " . $mysqli->connect_errno . "\n";
    echo "Error: " . $mysqli->connect_error . "\n";
    exit;
}
//intentar codificar la base de datos en utf8
$mysqli->set_charset("utf8");
  
//guardamos la consulta en una variable llamada $sql
$sql = "SELECT p.id_producto,p.nombre,p.precio_unidad,c.empresa,c.nombre as 'nombre_gerente',c.cif FROM clientes c right join productos p ON c.id_cliente = p.id_cliente";

//ejecuta el sql
$resultado=mysqli_query($mysqli,$sql)or die("A MySQL error has occurred.<br />Your Query: " . $sql . "<br /> Error: (" . mysqli_errno($mysqli) . ") " . mysqli_error($mysqli));

//cuenta el número de filas
$filasDevueltas = mysqli_num_rows($resultado);

//miramos si el número devuelto es mayor de 0
if($filasDevueltas>0){
	//hacemos un bucle
	 while ( ($fila=mysqli_fetch_array($resultado)) ) {
		$rows[]=array($fila['id_producto'],$fila['nombre'],$fila['precio_unidad'],$fila['empresa'],$fila['nombre_gerente'],$fila['cif']);
	}
}else $rows=array();


$row=array("data" => $rows);

//mostramos el resultado
print json_encode($row);

?>