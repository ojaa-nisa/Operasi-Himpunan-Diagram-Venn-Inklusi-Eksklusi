@echo off
cd /d "%~dp0"

where py >nul 2>nul
if not errorlevel 1 (
    set PYTHON_CMD=py
) else (
    set PYTHON_CMD=python
)

echo Membuka halaman aplikasi di browser...
start "" http://localhost:8000/index.html

echo Menjalankan server lokal...
%PYTHON_CMD% -m http.server 8000
