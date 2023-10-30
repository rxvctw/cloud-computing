<?php
 
//conectar con la base de datos 
include ('conexion.php');
$sql = "INSERT INTO alumno (dni, nombre, apellidos)
VALUES ('".$_POST['dni']."','".$_POST['nombre']."','".$_POST['apellidos']."')";
// inserta en la tabla alumno de la base de datos ALUMNOS
if (mysqli_query($conn, $sql)) {
    echo "New record created successfully<br>";
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}
 
mysqli_close($conn);
 
echo "<a href='home.html'>Volver Inicio </a>";
?>