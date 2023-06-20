$porcentajeMinimoEspacioLibre = 10  # Define el porcentaje mínimo de espacio libre requerido
$discos = Get-WmiObject -Class Win32_LogicalDisk | Where-Object { $_.DriveType -eq 3 }
Write-Output "Leyendo discos:"
foreach ($disco in $discos) {
    $letraUnidad = $disco.DeviceID
    $espacioLibreGB = [math]::Round($disco.FreeSpace / 1GB)
    $tamanoGB = [math]::Round($disco.Size / 1GB)
    $porcentajeEspacioLibre = [math]::Round(($disco.FreeSpace / $disco.Size) * 100)
    Write-Output "* Disco: $letraUnidad Tamanio: $tamanoGB GB, Espacio Libre: $porcentajeEspacioLibre%"
}
