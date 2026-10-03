@echo off
setlocal
chcp 65001 >nul

set "REPO=C:\jekyll\dragan_azdejkovic"

echo.
echo ============================================
echo   Azuriranje Jekyll sajta na GitHub-u
echo ============================================
echo.

cd /d "%REPO%" || (
    echo GRESKA: Ne mogu da otvorim:
    echo %REPO%
    pause
    exit /b 1
)

echo [1/5] Provera Git repozitorijuma...
git rev-parse --is-inside-work-tree >nul 2>&1 || (
    echo GRESKA: Ovaj folder nije Git repozitorijum.
    pause
    exit /b 1
)

echo [2/5] Preuzimanje eventualnih promena sa GitHub-a...
git pull --ff-only origin main
if errorlevel 1 (
    echo.
    echo GRESKA: git pull nije uspeo.
    echo Nista nije poslato na GitHub.
    pause
    exit /b 1
)

echo.
echo [3/5] Dodavanje lokalnih izmena...
git add -A

git diff --cached --quiet
if not errorlevel 1 (
    echo.
    echo Nema novih izmena za slanje.
    echo GitHub je vec uskladjen sa lokalnim fajlovima.
    pause
    exit /b 0
)

echo.
echo Fajlovi koji ce biti poslati:
git status --short
echo.

set "MSG=Azuriranje sajta %date% %time:~0,8%"

echo [4/5] Pravljenje commit-a...
git commit -m "%MSG%"
if errorlevel 1 (
    echo.
    echo GRESKA: Commit nije uspeo.
    pause
    exit /b 1
)

echo.
echo [5/5] Slanje na GitHub...
git push origin main
if errorlevel 1 (
    echo.
    echo GRESKA: Push nije uspeo.
    pause
    exit /b 1
)

echo.
echo ============================================
echo   GOTOVO - izmene su poslate na GitHub.
echo   GitHub Actions ce sada ponovo napraviti sajt.
echo ============================================
echo.
git status
echo.
pause
endlocal
