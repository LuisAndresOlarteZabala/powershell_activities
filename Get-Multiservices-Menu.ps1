function Listar-ServiciosArrancados {
    $servicios = Get-Service | Where-Object { $_.Status -eq 'Running' }
    Write-Output "Listado de servicios arrancados:"
    foreach ($servicio in $servicios) {
        Write-Output $servicio.Name
    }
}
function Mostrar-FechaSistema {
    $fechaActual = Get-Date -Format "dd/MM/yyyy HH:mm:ss"
    Write-Output "Fecha del sistema: $fechaActual"
}
function Ejecutar-BlocDeNotas {
    Start-Process "notepad.exe"
    Write-Output "Se ejecuto  Bloc de notas."
}
function Ejecutar-Calculadora {
    Start-Process "calc.exe"
    Write-Output "Se ejecuto Calculadora."
}
function Mostrar-Menu {
    Write-Output "
    1. Listar los servicios arrancados.
    2. Mostrar la fecha del sistema.
    3. Ejecuta-r el Bloc de notas.
    4. Ejecutar la Calculadora.
    5. Salir.
    "
    $opcion = Read-Host "Introduce el número de la opción deseada"
    switch ($opcion) {
        1 { Listar-ServiciosArrancados }
        2 { Mostrar-FechaSistema }
        3 { Ejecutar-BlocDeNotas }
        4 { Ejecutar-Calculadora }
        5 { Write-Output "Saliendo del programa..."
            return }
        default { Write-Output "Opción no válida." }
    }
    Mostrar-Menu
}
Mostrar-Menu
