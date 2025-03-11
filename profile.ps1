$Env:VI_MODE_SEGMENT = "INS"
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward
Set-PSReadLineOption -PredictionViewStyle ListView -PredictionSource HistoryAndPlugin -EditMode Vi -ViModeIndicator Script -ViModeChangeHandler {
    param($mode)

    if ($mode -eq "Command") {
        $Env:VI_MODE_SEGMENT = "COM"
        [System.Console]::CursorSize = 100
        
        # Set the cursor to a blinking block.
        Write-Host -NoNewLine "`e[1 q"
    } else {
        $Env:VI_MODE_SEGMENT = "INS"
        [System.Console]::CursorSize = 30

        # Set the cursor to a blinking line.
        Write-Host -NoNewLine "`e[5 q"
    }

    [Microsoft.PowerShell.PSConsoleReadLine]::InvokePrompt()
}
oh-my-posh init pwsh --config 'C:\OMPOSHConf\aryan-atomic.omp.json' | Invoke-Expression
