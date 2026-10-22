@echo off
rem  Push the Watch site to GitHub Pages (user site: lfclxx.github.io)
rem  NOTE: ASCII only. Create the repo on github.com first (see chat instructions).
cd /d "%~dp0"

rem  Route git through local proxy (git does not read Windows system proxy)
git config http.proxy socks5h://127.0.0.1:10808
git config https.proxy socks5h://127.0.0.1:10808

if not exist .git git init -b main
git add -A
git commit -m "Watch app site: landing, terms, privacy" 
git branch -M main
git remote remove origin 2>nul
git remote add origin https://github.com/lfclxx/lfclxx.github.io.git
git push -u origin main
pause
