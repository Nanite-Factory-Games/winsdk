# escape=`

# Use the latest Windows Server Core 2019 image.
FROM mcr.microsoft.com/windows/servercore:ltsc2019 as winsdk

# Restore the default Windows shell for correct batch processing.
SHELL ["cmd", "/S", "/C"]

RUN `
    curl -SL --output sdksetup.exe https://go.microsoft.com/fwlink/p/?LinkId=323507 `
    `
    && (sdksetup.exe /features OptionId.WindowsDesktopSoftwareDevelopmentKit OptionId.NetFxSoftwareDevelopmentKit /quiet || IF "%ERRORLEVEL%"=="3010" EXIT 0)