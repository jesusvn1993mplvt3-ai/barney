@echo off
setlocal

:: 1. Añadir cambios
echo [+] Añadiendo cambios locales...
git add .

:: 2. Configurar mensaje de commit
:: Si escribes algo al ejecutarlo, lo usa como mensaje. Si no, usa la fecha.
set "msg=%~1"
if "%msg%"=="" set "msg=Actualizacion automatica %date% %time%"

echo [!] Generando commit: "%msg%"
git commit -m "%msg%"

:: 3. Subir cambios
echo [^>] Subiendo a GitHub...
git push

:: 4. Opcional: Ver el estado en GitHub usando la CLI
echo [OK] Proceso terminado.
gh repo view --web

pause
