@echo off
rem Horror game launcher: starts a local web server and opens the game
cd /d "%~dp0"
start "" cmd /c "timeout /t 2 >nul & start http://localhost:8123/index.html"
where python >nul 2>nul && (python -m http.server 8123) || (py -m http.server 8123)
pause
