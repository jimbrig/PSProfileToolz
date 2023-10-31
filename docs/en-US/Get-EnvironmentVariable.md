---
external help file: PSProfileTools-help.xml
Module Name: PSProfileTools
online version:
schema: 2.0.0
---

# Get-EnvironmentVariable

## SYNOPSIS
Gets an Environment Variable.

## SYNTAX

```
Get-EnvironmentVariable [-Name] <String> [-Scope] <EnvironmentVariableTarget> [-PreserveVariables] [-Split]
 [[-IgnoredArguments] <Object[]>] [<CommonParameters>]
```

## DESCRIPTION
This will will get an environment variable based on the variable name
and scope while accounting whether to expand the variable or not
(e.g.: \`%TEMP%\`-\> \`C:\User\Username\AppData\Local\Temp\`).

## EXAMPLES

### EXAMPLE 1
```
Get-EnvironmentVariable -Name 'TEMP' -Scope User -PreserveVariables
```

Get the value of the TEMP environment variable from the user scope, preserving its value as registered in the registry.

### EXAMPLE 2
```
Get-EnvironmentVariable -Name 'PATH' -Scope Machine
```

Get all environment variable names from the machine scope.

### EXAMPLE 3
```
Get-EnvironmentVariable -Name 'PATH' -Scope User -Split
```

Get all environment variable names from the user scope and split them by the \`;\` character onto separate lines.

## PARAMETERS

### -Name
The environment variable you want to get the value from.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Scope
The environment variable target scope.
This is \`Process\`, \`User\`, or \`Machine\`.

```yaml
Type: EnvironmentVariableTarget
Parameter Sets: (All)
Aliases:
Accepted values: Process, User, Machine

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PreserveVariables
A switch parameter stating whether you want to "expand" the path variables or not.
Defaults to $false.
For example, if you have a path variable like \`%TEMP%\` and you set this, the function will return
\`C:\User\Username\AppData\Local\Temp\`.
If you do not set this, the function will return \`%TEMP%\`.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Split
A switch parameter stating whether you want to split the value by the \`;\` character.
Defaults to $false.
Useful when you want to get a list of paths from the \`PATH\` environment variable.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -IgnoredArguments
Allows splatting with arguments that do not apply.
Do not use directly.

```yaml
Type: Object[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### System.String
## NOTES
This helper reduces the number of lines one would have to write to get
environment variables, mainly when not expanding the variables is a
must.

## RELATED LINKS

[Get-EnvironmentVariableNames]()

[Set-EnvironmentVariable]()

