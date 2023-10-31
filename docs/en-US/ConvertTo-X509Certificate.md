---
external help file: PSProfileTools-help.xml
Module Name: PSProfileTools
online version: https://gist.github.com/indented-automation/37b748056742d5e1b51f7cd767813f5d
schema: 2.0.0
---

# ConvertTo-X509Certificate

## SYNOPSIS
Convert a Base64 encoded certificate (with header and footer) to an X509Certificate object.

## SYNTAX

### FromPipeline (Default)
```
ConvertTo-X509Certificate [<CommonParameters>]
```

### FromFile
```
ConvertTo-X509Certificate [-Path] <String> [<CommonParameters>]
```

### FromCertificateText
```
ConvertTo-X509Certificate -Certificate <String> [<CommonParameters>]
```

## DESCRIPTION
ConvertTo-X509Certificate reads a Base64 encoded certificate string or file and converts it to an X509Certificate
object.

## EXAMPLES

### EXAMPLE 1
```
Get-ChildItem *.pem | ConvertTo-X509Certificate
```

Converts all certificates stored in pem files to an X509Certificate2 object.

### EXAMPLE 2
```
ConvertTo-X509Certificate -Path cert.cer
```

Converts the certificate stored in cert.cer to an X509Certificate2 object.

## PARAMETERS

### -Path
The path to an existing certificate file.

```yaml
Type: String
Parameter Sets: FromFile
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Certificate
One or more base64 encoded strings describing the certificate.

```yaml
Type: String
Parameter Sets: FromCertificateText
Aliases: RawCertificate

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### System.Security.Cryptography.X509Certificates.X509Certificate2
## NOTES

## RELATED LINKS

[https://gist.github.com/indented-automation/37b748056742d5e1b51f7cd767813f5d](https://gist.github.com/indented-automation/37b748056742d5e1b51f7cd767813f5d)

