
Set-ExecutionPolicy Bypass -Scope Process -Force;
try {
    # Set TLS 1.2 (3072) as that is the minimum required by Chocolatey.org
    # Use integers because the enumeration value for TLS 1.2 won't exist
    # in .NET 4.0, even though they are addressable if .NET 4.5+ is
    # installed (.NET 4.5 is an in-place upgrade).
    [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
  } catch {
    Write-Warning 'Unable to set PowerShell to use TLS 1.2. This is required for contacting Chocolatey as of 03 FEB 2020. https://chocolatey.org/blog/remove-support-for-old-tls-versions. If you see underlying connection closed or trust errors, you may need to do one or more of the following: (1) upgrade to .NET Framework 4.5+ and PowerShell v3+, (2) Call [System.Net.ServicePointManager]::SecurityProtocol = 3072; in PowerShell prior to attempting installation, (3) specify internal Chocolatey package location (set $env:chocolateyDownloadUrl prior to install or host the package internally), (4) use the Download + PowerShell method of install. See https://chocolatey.org/docs/installation for all install options.'
  }
  
  iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
# Install Packages
#choco install reportviewer2012 dotnet4.0 google-chrome vscode -y

#Run 
Invoke-Sqlcmd  -Database master -Query "CREATE LOGIN wsus-test-1 WITH PASSWORD = 'anonymous@2020!';" -ServerInstance localhost

# Install SQL SERVER CMD
Install-Module -Name SqlServer -Force AllowClover

