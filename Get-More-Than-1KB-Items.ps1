$directorioActual = Get-Location
$archivosGrandes = Get-ChildItem -Path $directorioActual -File | Where-Object { $_.Length -gt 1024 }

foreach ($archivo in $archivosGrandes) {
    Write-Output $archivo.Name
}
