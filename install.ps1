$link = "https://github.com/wiz772/Bhoplotl/releases/latest/download/BhoplotlCli.exe"

$outfile = "$env:TEMP\BhoplotlCli.exe"

Write-Output "Downloading installer to $outfile"

Invoke-WebRequest -Uri "$link" -OutFile "$outfile"

Write-Output ""

Start-Process -Wait -NoNewWindow -FilePath "$outfile"

# Cleanup
Remove-Item -Force "$outfile"
