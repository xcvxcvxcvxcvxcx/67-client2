@echo off
setlocal
set GRADLE_VERSION=9.2.0
if "%GRADLE_USER_HOME%"=="" set GRADLE_USER_HOME=%USERPROFILE%\.gradle
set BASE=%GRADLE_USER_HOME%\wrapper\dists\gradle-%GRADLE_VERSION%-bin\67client-bootstrap
set DIST=%BASE%\gradle-%GRADLE_VERSION%
if not exist "%DIST%\bin\gradle.bat" (
  if not exist "%BASE%" mkdir "%BASE%"
  powershell -NoProfile -ExecutionPolicy Bypass -Command "$ProgressPreference='SilentlyContinue'; Invoke-WebRequest 'https://services.gradle.org/distributions/gradle-%GRADLE_VERSION%-bin.zip' -OutFile '%BASE%\gradle-%GRADLE_VERSION%-bin.zip'; Expand-Archive -Force '%BASE%\gradle-%GRADLE_VERSION%-bin.zip' '%BASE%'"
  if errorlevel 1 exit /b 1
)
call "%DIST%\bin\gradle.bat" %*
exit /b %ERRORLEVEL%
