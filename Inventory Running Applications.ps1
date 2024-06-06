$pcname = (Get-ComputerInfo -Property "*csname")
$pcname.CsName

Clear-Host
Write-Host "╔════════════════════════════════════════╗" -ForegroundColor Yellow
Write-Host "║" -ForegroundColor Yellow -NoNewline
Write-Host "            Made by Daemian             " -ForegroundColor Green -NoNewline
Write-Host "║" -ForegroundColor Yellow
Write-Host "╚════════════════════════════════════════╝" -ForegroundColor Yellow
Write-Host "PC-name :" $pcname
Write-Host ""
Write-Host "1 = Yes"
Write-Host "2 = No"
Write-Host ""
$optie = Read-Host -Prompt "Output information running applications?"

If ($optie -eq 1){
    Write-Host "Informatie will be output" -Foregroundcolor green
    Get-Process | Out-File .\draaiende-applicaties.txt
}

Elseif ($optie -eq 2){
    Write-Host "Information will not be output" -Foregroundcolor Red
    Exit-PSSession
}

Else {
    Write-Host "Command not recognised" -Foregroundcolor Red
}