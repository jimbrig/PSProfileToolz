---
external help file: PSProfileTools-help.xml
Module Name: PSProfileTools
online version:
schema: 2.0.0
---

# Get-EnvironmentVariableNames

## SYNOPSIS
Gets all environment variable names.

## SYNTAX

```
Get-EnvironmentVariableNames [-Scope] <EnvironmentVariableTarget> [<CommonParameters>]
```

## DESCRIPTION
Provides a list of environment variable names based on the scope.
This
can be used to loop through the list and generate names.

## EXAMPLES

### EXAMPLE 1
```
Get-EnvironmentVariableNames -Scope Machine
```

## PARAMETERS

### -Scope
The environment variable target scope.
This is \`Process\`, \`User\`, or
\`Machine\`.

```yaml
Type: EnvironmentVariableTarget
Parameter Sets: (All)
Aliases:
Accepted values: Process, User, Machine

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None
## OUTPUTS

### A list of environment variables names.
## NOTES
Process dumps the current environment variable names in memory /
session.
The other scopes refer to the registry values.

## RELATED LINKS

[Get-EnvironmentVariable]()

[Set-EnvironmentVariable]()

