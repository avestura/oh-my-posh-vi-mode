$Env:VI_MODE_SEGMENT = "INS"
Set-PSReadLineOption -PredictionViewStyle ListView -PredictionSource HistoryAndPlugin -EditMode Vi -ViModeIndicator Script -ViModeChangeHandler {
    param($mode)

    if ($mode -eq "Command") {
        $Env:VI_MODE_SEGMENT = "COM"
        [System.Console]::CursorSize = 100
    } else {
        $Env:VI_MODE_SEGMENT = "INS"
        [System.Console]::CursorSize = 30
    }

    [Microsoft.PowerShell.PSConsoleReadLine]::InvokePrompt()
}
oh-my-posh init pwsh --config 'C:\OMPOSHConf\aryan-atomic.omp.json' | Invoke-Expression
