$url = "https://nodejs.org/dist/v14.18.1/node-v14.18.1-x64.msi"
$output = "node-v14.18.1-x64.msi"

Invoke-WebRequest -Uri $url -OutFile $output
Start-Process -FilePath $output -ArgumentList "/quiet" -Wait
Remove-Item $output
