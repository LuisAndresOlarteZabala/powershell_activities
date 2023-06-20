# Proyecto de Automatización con PowerShell

## Descripción de los Scripts

1. `Get-More-Than-1KB-Items.ps1`: Script que muestra un listado de los ficheros del directorio actual que ocupe más de 1024 bytes
2. `Get-JPG-Items.ps1`: Script que renombre todos los ficheros con extensión JPG del directorio
   actual, añadiendo un prefijo con la fecha en formato año, mes, día. Por ejemplo,
   un fichero con nombre imagen1.jpg pasaría a llamarse 20200413-image1.jpg, si el
   script se ejecuta el 13 de abril de 2020.
3. `Get-Disk-Space.ps1`: Script en PowerShell que muestre los discos duros con un porcentaje de espacio libre inferior a un parámetro dado. El script debe imprimir la letra de la unidad y los valores en GB de espacio libre y tamaño sin decimales. La expresión Win32_LogicalDisk recupera la información de los discos del sistema.
4. `Get-Multiservices-Menu.ps1`: Este script muestra un menú con diferentes opciones y ejecuta la acción correspondiente según la opción seleccionada por el usuario.

   1. Este script lista los servicios arrancados en el sistema.
   2. Este script muestra la fecha del sistema.
   3. Este script ejecuta el Bloc de notas.
   4. Este script ejecuta la Calculadora.
   5. Este script se puede salir de la ejecución.

## Requisitos

- PowerShell 3.0 o superior.

## Instrucciones de Uso

1. Clona o descarga este repositorio en tu máquina local.
2. Abre una ventana de PowerShell y navega al directorio donde se encuentra el proyecto.
3. Ejecuta algunos de los script utilizando el comando `.\File-name.ps1`.

   * .\Get-Disk-Space.ps1
   * .\Get-JPG-Items.ps1
   * .\Get-More-Than-1KB-Items
   * .\Get-Multiservices-Menu.ps1
4. Sigue las instrucciones del menú para seleccionar la opción deseada y realizar las acciones correspondientes.

## Notas Adicionales

- Antes de ejecutar los scripts, asegúrate de que la ejecución de scripts de PowerShell esté habilitada en tu sistema. Puedes utilizar el comando `Set-ExecutionPolicy` para ajustar la configuración de ejecución de scripts según tus necesidades.

```powershell
Set-ExecutionPolicy RemoteSigned
```

- Ten en cuenta que estos scripts son ejemplos básicos y puedes personalizarlos y expandirlos según tus necesidades.

## Contribuciones

¡Las contribuciones son bienvenidas! Si deseas mejorar este proyecto o agregar nuevas características, no dudes en enviar una solicitud de pull.

## Licencia

Este proyecto está licenciado bajo la [Licencia MIT](https://opensource.org/licenses/MIT).
