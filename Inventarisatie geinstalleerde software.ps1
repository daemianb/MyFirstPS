$pcname = (Get-ComputerInfo -Property "*csname")
$pcname.CsName

Clear-Host
Write-Host "╔════════════════════════════════════════╗" -ForegroundColor Yellow
Write-Host "║" -ForegroundColor Yellow -NoNewline
Write-Host "          Beheermenu van HC-IT          " -ForegroundColor Green -NoNewline
Write-Host "║" -ForegroundColor Yellow
Write-Host "╚════════════════════════════════════════╝" -ForegroundColor Yellow
Write-Host "Computer Naam :" $pcname
Write-Host ""
Write-Host "1 = Ja"
Write-Host "2 = Nee"
Write-Host ""
$optie = Read-Host -Prompt "Output informatie draaiende applicaties?"

If ($optie -eq 1){
    Write-Host "Informatie word geoutput" -Foregroundcolor green
    Get-Process | Out-File .\draaiende-applicaties.txt
}

Elseif ($optie -eq 2){
    Write-Host "Informatie word niet geoutput" -Foregroundcolor Red
    Exit-PSSession
}

Else {
    Write-Host "Commando niet bekend" -Foregroundcolor Red
}