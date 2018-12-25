@echo off
gem install bundler 
if %ERRORLEVEL% == 0 goto :next
echo "Unable to find gem. Install Ruby and relaunch the command prompt"
start "" https://github.com/oneclick/rubyinstaller2/releases/download/rubyinstaller-2.5.3-1/rubyinstaller-2.5.3-1-x64.exe
goto :endofscript
:next
bundle install
:endofscript
