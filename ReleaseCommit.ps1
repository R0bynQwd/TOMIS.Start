# Script pentru commit automat la Release folosind Gemini CLI (Headless Mode)
$changes = git status --short

if ($null -eq $changes -or $changes -eq "") {
    Write-Host "Nu exista modificari pentru commit."
    exit 0
}

Write-Host "Se apeleaza Gemini CLI in mod automat (YOLO)..."
# -p pentru mod non-interactiv, -y pentru a accepta automat toate actiunile
# Adaugam instructiunea explicita de a NU modifica .csproj sau .sln
gemini -p "Analizeaza modificarile din cod, scrie un mesaj de commit profesionist si executa commit si push pe branch-ul main. NU modifica fisierele de proiect (.csproj, .sln) sau scripturile de build." -y

Write-Host "Proces finalizat de Gemini CLI!"
