
Set-ExecutionPolicy Bypass -Scope Process -Force;
iex ((New-Object System.Net.WebClient).DownloadString('http://internal_raw_url/ChocolateyInstall.ps1'))  
choco install reportviewer2012 dotnet4.0 google-chrome vscode -y

