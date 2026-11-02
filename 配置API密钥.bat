@echo off
chcp 65001 >nul
setlocal
cd /d "%~dp0"
echo.
echo 请输入这台电脑使用的 DeepSeek API Key。
echo 输入后回车即可，不会显示在屏幕上太长时间。
echo.
set /p "KEY=API Key: "
if "%KEY%"=="" (
  echo 没有输入，未修改。
  pause
  exit /b 1
)
> "内容文件夹\专升本备考\共享配置\API.txt" echo %KEY%
echo.
echo 已写入 内容文件夹\专升本备考\共享配置\API.txt
pause
