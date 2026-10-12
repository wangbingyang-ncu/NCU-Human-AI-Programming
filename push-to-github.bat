@echo off
chcp 65001 >nul
setlocal enabledelayedexpansion
cd /d "%~dp0"

echo ============================================================
echo   NCU Human-AI-Programming  -  Push to GitHub (one click)
echo   Nanchang University / Human-AI Collaborative Programming
echo ============================================================
echo.

REM ---------- STEP 0 : git installed? ----------
echo [STEP 0] Checking Git ...
git --version >nul 2>&1
if errorlevel 1 (
    echo    [X] Git not found. Please install Git for Windows first.
    echo        https://git-scm.com/download/win
    pause
    exit /b 1
)
for /f "delims=" %%v in ('git --version') do echo    [OK] %%v
echo.

REM ---------- STEP 1 : local repo ready? ----------
echo [STEP 1] Checking local repository ...
git rev-parse --is-inside-work-tree >nul 2>&1
if errorlevel 1 (
    echo    [X] This folder is not a Git repository yet.
    pause
    exit /b 1
)
for /f "delims=" %%h in ('git rev-parse --short HEAD') do set LOCAL_SHA=%%h
for /f "delims=" %%b in ('git branch --show-current') do set LOCAL_BRANCH=%%b
echo    [OK] branch=%LOCAL_BRANCH%  commit=%LOCAL_SHA%
echo.

REM ---------- STEP 2 : can we reach github.com ? ----------
echo [STEP 2] Testing network to github.com ...
set GIT_TERMINAL_PROMPT=0
git ls-remote https://github.com/octocat/Hello-World.git HEAD >nul 2>&1
if errorlevel 1 (
    echo    [X] Cannot reach github.com from the command line.
    echo.
    echo        Your browser may work while the terminal does not.
    echo        Please switch your proxy / VPN to GLOBAL mode
    echo        ^(often called "TUN mode" or "Global mode"^),
    echo        then run this script again.
    echo.
    pause
    exit /b 1
)
echo    [OK] github.com is reachable
echo.

REM ---------- STEP 3 : ask for the repo URL ----------
echo [STEP 3] Create an EMPTY repository in your browser first:
echo         1^) open  https://github.com/new
echo         2^) Repository name : NCU-Human-AI-Programming
echo         3^) choose Public, and do NOT tick any "Add a README" box
echo         4^) click Create repository
echo         5^) copy the URL from the address bar
echo.
echo         Example: https://github.com/yourname/NCU-Human-AI-Programming.git
echo.
set "REPOURL="
set /p "REPOURL=Paste repo URL here and press Enter: "
if "!REPOURL!"=="" (
    echo    [X] Empty input, nothing done.
    pause
    exit /b 1
)

REM make sure the URL ends with .git
if /i "!REPOURL:~-4!" neq ".git" set "REPOURL=!REPOURL!.git"

echo.
echo [STEP 4] Setting remote origin ...
git remote remove origin >nul 2>&1
git remote add origin "!REPOURL!"
echo    [OK] origin = !REPOURL!
echo.

REM ---------- STEP 5 : push ----------
echo [STEP 5] Pushing local commits to GitHub ...
echo    If a login window pops up, sign in with your GitHub account.
echo    If it asks for a PASSWORD, paste a Personal Access Token instead.
echo.
set GIT_TERMINAL_PROMPT=1
git push -u origin %LOCAL_BRANCH%
if errorlevel 1 (
    echo.
    echo    [X] Push failed.
    echo        Most common cause: the remote repo was created WITH a README,
    echo        so it already has a commit and yours is rejected.
    echo        Fix: delete that repo, recreate it completely EMPTY, rerun.
    echo.
    pause
    exit /b 1
)

echo.
echo ============================================================
echo   DONE!  Your portfolio is now on GitHub.
echo ============================================================
for /f "delims=" %%u in ('git remote get-url origin') do set "FINALURL=%%u"
set "FINALURL=!FINALURL:.git=!"
echo   !FINALURL!
echo.
start "" "!FINALURL!"
pause
