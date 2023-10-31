---
external help file: PSProfileTools-help.xml
Module Name: PSProfileTools
online version:
schema: 2.0.0
---

# Get-SystemTrayIcon

## SYNOPSIS
Get system tray icon visibility.

## SYNTAX

```
Get-SystemTrayIcon [[-Path] <String>] [<CommonParameters>]
```

## DESCRIPTION
Get system tray icon visibility using the IconStreams value in the registry.

## EXAMPLES

### EXAMPLE 1
```
Get-SystemTrayIcon -Path 'C:\Program Files\Microsoft VS Code\Code.exe'
```

Get the visibility of the VS Code system tray icon.

## PARAMETERS

### -Path
The path for the system tray icon.
By default app paths are displayed.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: *
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
