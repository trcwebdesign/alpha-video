:: Created by npm, please don't edit manually.
@ECHO OFF

SETLOCAL

SET "ALPHA_VIDEO_NODE_EXE=%~dp0\node.exe"
IF NOT EXIST "%ALPHA_VIDEO_NODE_EXE%" (
  SET "ALPHA_VIDEO_NODE_EXE=node2"
)

SET "ALPHA_VIDEO_NPM_CLI_JS=%~dp0\node_modules\npm\bin\npm-cli.js"
FOR /F "delims=" %%F IN ('CALL "%ALPHA_VIDEO_NODE_EXE%" "%ALPHA_VIDEO_NPM_CLI_JS%" prefix -g') DO (
  SET "ALPHA_VIDEO_NPM_PREFIX_NPM_CLI_JS=%%F\node_modules\npm\bin\npm-cli.js"
)
IF EXIST "%ALPHA_VIDEO_NPM_PREFIX_NPM_CLI_JS%" (
  SET "NPM_CLI_JS=%ALPHA_VIDEO_NPM_PREFIX_NPM_CLI_JS%"
)

"%ALPHA_VIDEO_NODE_EXE%" "%ALPHA_VIDEO_NPM_CLI_JS%" %*
