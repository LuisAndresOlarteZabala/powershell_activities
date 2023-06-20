$directorioActual = Get-Location
$fechaActual = Get-Date -Format "yyyyMMdd"

$archivosJPG = Get-ChildItem -Path $directorioActual -Filter "*.jpg" -File

foreach ($archivo in $archivosJPG) {
    $nuevoNombre = "{0}-{1}" -f $fechaActual, $archivo.Name
    $nuevoRuta = Join-Path -Path $directorioActual -ChildPath $nuevoNombre
    Rename-Item -Path $archivo.FullName -NewName $nuevoRuta
}
