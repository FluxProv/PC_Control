@echo off
setlocal

rem Получить путь к текущей директории (где находится start.bat)
set "SCRIPT_DIR=%~dp0"

rem Путь к вашему исполняемому файлу (PC_Control.exe)
set "APP_PATH=%SCRIPT_DIR%\PC_Control.exe"

rem Путь к иконке для приложения (icon.ico)
set "ICON_PATH=%SCRIPT_DIR%\icon.ico"

rem Добавление в автозагрузку
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "PC_Control" /t REG_SZ /d "\"%APP_PATH%\"" /f

rem Установка иконки для запуска в автозагрузке
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "PC_Control_Icon" /t REG_SZ /d "\"%ICON_PATH%\"" /f

rem Запуск PC_Control.exe
start "" "%APP_PATH%"

endlocal
