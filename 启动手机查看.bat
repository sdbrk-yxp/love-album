@echo off
chcp 65001 >nul
cd /d "C:\Users\16087\love-album"

:: 获取局域网IP
for /f "tokens=2 delims=:" %%a in ('ipconfig ^| findstr /i "IPv4" ^| findstr "192.168"') do set IP=%%a
set IP=%IP: =%

echo.
echo ==============================
echo   手机浏览器打开以下地址：
echo   http://%IP%:8080
echo ==============================
echo.
echo 按 Ctrl+C 关闭服务器

npx -y http-server -p 8080 -c-1 --cors
pause
