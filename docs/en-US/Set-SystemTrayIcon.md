---
external help file: PSProfileTools-help.xml
Module Name: PSProfileTools
online version: https://gist.github.com/indented-automation/37b748056742d5e1b51f7cd767813f5d
schema: 2.0.0
---

# Set-SystemTrayIcon

## SYNOPSIS
Set system tray icon visibility.

## SYNTAX

### ByPath
```
Set-SystemTrayIcon -Path <String> -Visibility <Visibility> [<CommonParameters>]
```

### FromPipeline
```
Set-SystemTrayIcon -InputObject <Object> -Visibility <Visibility> [<CommonParameters>]
```

## DESCRIPTION
Set system tray icon visibility using the IconStreams value in the registry.

## EXAMPLES

### EXAMPLE 1
```
Get-SystemTrayIcon -Path 'C:\Program Files\Microsoft VS Code\Code.exe' | Set-SystemTrayIcon -Visibility Hidden
```

Hide the VS Code system tray icon.

## PARAMETERS

### -Path
The path for the system tray icon.
By default app paths are displayed.

```yaml
Type: String
Parameter Sets: ByPath
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: True
```

### -InputObject
The icon streams record to update.

```yaml
Type: Object
Parameter Sets: FromPipeline
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Visibility
The visibility to set for the system tray icon.

```yaml
Type: Visibility
Parameter Sets: (All)
Aliases:
Accepted values: Default, Hide, Show

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
