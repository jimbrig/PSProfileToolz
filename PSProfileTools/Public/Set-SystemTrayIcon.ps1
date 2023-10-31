function Set-SystemTrayIcon {
    <#
    .SYNOPSIS
        Set system tray icon visibility.

    .DESCRIPTION
        Set system tray icon visibility using the IconStreams value in the registry.

    .PARAMETER Path
        The path for the system tray icon. By default app paths are displayed.

    .PARAMETER InputObject
        The icon streams record to update.

    .PARAMETER Visibility
        The visibility to set for the system tray icon.

    .EXAMPLE
        PS> Get-SystemTrayIcon -Path 'C:\Program Files\Microsoft VS Code\Code.exe' | Set-SystemTrayIcon -Visibility Hidden

        Hide the VS Code system tray icon.
    #>

    [CmdletBinding()]
    param (
        [Parameter(Mandatory, ParameterSetName = 'ByPath')]
        [SupportsWildcards()]
        [string]$Path,

        [Parameter(Mandatory, ValueFromPipeline, ParameterSetName = 'FromPipeline')]
        [PSTypeName('IconStreamsRecord')]
        [object]$InputObject,

        [Parameter(Mandatory)]
        [Visibility]$Visibility
    )

    begin {
        $registryPath = 'HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify'
        $systemTrayToggleOffset = 528

        if ($PSCmdlet.ParameterSetName -eq 'Path') {
            Get-SystemTrayIcon -Path $Path | Set-SystemTrayIcon -Visibility $Visibility
            return
        }

        $iconStreams = Get-ItemPropertyValue -Path $registryPath -Name IconStreams
        $shouldUpdate = $false
    }

    process {
        if ($PSCmdlet.ParameterSetName -eq 'ByPath') {
            return
        }

        if ($InputObject.Visibility -ne $Visibility) {
            $shouldUpdate = $true
            $iconStreams[$InputObject.Offset + $systemTrayToggleOffset] = $Visibility.value__
        }
    }

    end {
        if ($PSCmdlet.ParameterSetName -eq 'ByPath') {
            return
        }
        if ($shouldUpdate) {
            Set-ItemProperty -Path $registryPath -Name IconStreams -Value $iconStreams
        }
    }
}
