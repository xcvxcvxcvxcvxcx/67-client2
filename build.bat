@echo off
chcp 65001 >nul
title 67 CLIENT - Build du mod
cd /d "%~dp0"

echo Compilation du mod ^(le premier lancement telecharge Gradle + Minecraft, plusieurs minutes^)...
call gradlew.bat build
if errorlevel 1 (
  echo.
  echo [ERREUR] La compilation a echoue. Copie le message d'erreur ci-dessus.
  pause & exit /b 1
)

if not exist MOD-JAR mkdir MOD-JAR
copy /y build\libs\67-client-1.0.0.jar MOD-JAR\ >nul
echo.
echo OK ! Ton mod est ici : MOD-JAR\67-client-1.0.0.jar
echo Mets-le dans .minecraft\mods avec Fabric API, profil Fabric 1.21.11.
pause
