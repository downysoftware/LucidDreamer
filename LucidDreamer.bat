@echo off
echo Logging started at %DATE% %TIME% > logs.txt
powershell -Command "your_python_script.py | Tee-Object -FilePath logs.txt -Append"

cls

D:

cd "D:\Program Files\Python\Python39\LucidDreamer"

call activate-env.bat

start "LucidDreamer" cmd /c "python app.py > logs.txt 2>&1" & title LucidDreamer

timeout /t 15 > nul

call browser-launch.bat

pause