Invoke-WebRequest -URI "https://home.outernet.hackclub.com/outernet.crt" -OutFile C:\outernet.crt
$file=(Get-ChildItem -Path "C:\outernet.crt")  # something

$file | Import-Certificate -CertStoreLocation cert:\LocalMachine\Root