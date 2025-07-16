$basePath = "c:\cursos\Academia-Mega"
for ($i = 1; $i -le 15; $i++) {
    $folderName = "{0:D2}_sesion" -f $i
    $folderPath = Join-Path $basePath $folderName
    New-Item -ItemType Directory -Path $folderPath -Force
    New-Item -ItemType File -Path (Join-Path $folderPath ".gitkeep") -Force
}
