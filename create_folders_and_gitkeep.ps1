$basePath = "c:\cursos\Academia-Mega"
for ($i = 1; $i -le 15; $i++) {
    $folderName = "{0:D2}_sesion" -f $i
    $folderPath = Join-Path $basePath $folderName
    New-Item -ItemType Directory -Path $folderPath -Force
    New-Item -ItemType File -Path (Join-Path $folderPath ".gitkeep") -Force
}

# # Initialize Git repository if not already initialized
# if (!(Test-Path (Join-Path $basePath ".git"))) {
#     git init $basePath
# }

# # Stage all changes
# git -C $basePath add .

# # Commit the changes
# $commitMessage = "Add session folders with .gitkeep files"
# git -C $basePath commit -m $commitMessage

# # Push the changes to the remote repository
# $remoteName = "origin"
# $branchName = "main"
# git -C $basePath push $remoteName $branchName
