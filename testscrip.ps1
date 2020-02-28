
Set-ExecutionPolicy Bypass -Scope Process -Force;

# Install SQL SERVER CMD
# Install-Module -Name SqlServer -Force AllowClover

#Run SQL 
Invoke-Sqlcmd  -Database master -Query "CREATE LOGIN wsustest2 WITH PASSWORD = 'a@nonymous@2020!';" -ServerInstance localhost

#install chrome
