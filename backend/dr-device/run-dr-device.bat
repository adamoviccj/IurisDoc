@echo off
cd /d %~dp0

echo ================================
echo   DR-DEVICE FULL PIPELINE
echo ================================

set NAME=rulebase
set SAXON=.\saxon-he-11-4\saxon-he-11.4.jar

echo LegalRuleML -> RuleML
java -jar "%SAXON%" -s:%NAME%.lrml -xsl:.\XSL\lrml2ruleml.xsl -o:%NAME%.ruleml

echo RuleML -> CLIPS
java -jar "%SAXON%" -s:%NAME%.ruleml -xsl:.\XSL\dr-device.xsl -o:%NAME%.clp

if not exist %NAME%.clp (
  echo ERROR: CLP not generated
  pause
  exit /b
)

echo Generated %NAME%.clp OK

REM --- napravi CLIPS batch ---
echo (batch* "bin\\dr-device.bat") > run.clp
echo (load-dr-device "%NAME%.clp") >> run.clp
echo (run) >> run.clp
echo (exit) >> run.clp

REM --- pokretanje CLIPS DOS ---
if exist ".\CLIPSDOS\clipsdos64.exe" (
  echo Starting CLIPS DOS 64...
  .\CLIPSDOS\clipsdos64.exe -f2 run.clp
) else if exist ".\clipsdos64.exe" (
  echo Starting CLIPS DOS 64...
  .\clipsdos64.exe -f2 run.clp
) else (
  echo ERROR: clipsdos64.exe not found
)

pause