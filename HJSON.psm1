# Load hjson library
Add-Type -Path "$PSScriptRoot\bin\Hjson.dll"

# dot source all script files
Get-ChildItem -Path "$PSScriptRoot\functions" -Recurse -File -Filter '*.ps1' | ForEach-Object {
	. $_.FullName

	# Export all functions except internal
	if ($_.FullName -notcontains 'internal') {
		Export-ModuleMember $_.BaseName
	}
}


# SIG # Begin signature block
# MIINzgYJKoZIhvcNAQcCoIINvzCCDbsCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCCYwRfQ0nstvz9v
# EqPo3HILjW8RWv1CkKEwzWsy8N94KaCCCxowggRFMIIDLaADAgECAhN+AAAABczJ
# rJlL/d43AAAAAAAFMA0GCSqGSIb3DQEBCwUAMBYxFDASBgNVBAMTC0ZNRyBSb290
# IENBMB4XDTIyMDcyMDE1NDQzOFoXDTMyMDcyMDE1NTQzOFowQTEVMBMGCgmSJomT
# 8ixkARkWBWxvY2FsMRMwEQYKCZImiZPyLGQBGRYDZm1nMRMwEQYDVQQDEwpGTUcg
# U3ViIENBMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA0X7FUTp9a0ql
# w+jvODGRxE4oTBS8oXC0EOTWs8qjbx/IOAsbnCnV5getf1CYUY5Gq1DLrytwNB+Z
# H4yku4kmd0YOCEfZqH0lMAXms+8lcwubQw+ggZtad8H0o8D9OScBBF+N7ebhtT01
# Q9nbpgbnEFaepIwBhmouA7bHRNVDxoUYTfUXQ3NZ03ZxdSKIALfbMyyiZk5OZfTh
# dvh8sTfjwsfCQru7ETyxgVnTIZe1JIiLy5igAJ4K4u7x4hdHFQxO+xwrDui9BscK
# sa6aZ496Dv5D42gnij8aodDw9g1+g777bpDBF3g6rugP2DmVmDbFmXa7qtERIEKa
# pydqnLEYxQIDAQABo4IBXzCCAVswEAYJKwYBBAGCNxUBBAMCAQIwIwYJKwYBBAGC
# NxUCBBYEFPmB5rSWvDtcNH8jbWTwaMPUpLdQMB0GA1UdDgQWBBQRPcv+Uz+lCEzY
# usdcGpufOZIMqzAZBgkrBgEEAYI3FAIEDB4KAFMAdQBiAEMAQTALBgNVHQ8EBAMC
# AYYwDwYDVR0TAQH/BAUwAwEB/zAfBgNVHSMEGDAWgBSlC5/I9Fd2PZH3HMPU6uSN
# SZOCsTBGBgNVHR8EPzA9MDugOaA3hjVodHRwOi8vcGtpLmZvcnNtYXJzaGdyb3Vw
# LmNvbS9wa2kvRk1HJTIwUm9vdCUyMENBLmNybDBhBggrBgEFBQcBAQRVMFMwUQYI
# KwYBBQUHMAKGRWh0dHA6Ly9wa2kuZm9yc21hcnNoZ3JvdXAuY29tL3BraS9GTUdX
# UzE5UlROUkNBMDFfRk1HJTIwUm9vdCUyMENBLmNydDANBgkqhkiG9w0BAQsFAAOC
# AQEAOPa8eOkNuxPZ1vlt7aEkoLZZsMX5TcRpzwx/e41OffF9HHWyyn6SyCfnyXKV
# Yy+0/49ODEruqNO3Gi7eo+vor5v1/yH8QT+8vmLUW9RGheTI8lLyYvP3yG07JuOl
# Jp3/7k8zCF0IWQuMyQ989lXHUldKlnmfwwJsoDtGcz5iby8XXti3I5YFljYKb6ci
# RY0Zv7bEk5hyJqh71SgYbLM9oylTruQT1WTXQKvIUUTb2vzmLqnbQxgUAEH+tERW
# nG/9PKZPtGMCZH8lUrycjzbwR6cFqKB2LRpKuqm6/FxNKidcwsNB/1rEIFRyznbb
# AuTevIMQR0SO/2RDxpWa7Tjb5zCCBs0wggW1oAMCAQICEy4AAAUH7aEklGBBiLkA
# AgAABQcwDQYJKoZIhvcNAQELBQAwQTEVMBMGCgmSJomT8ixkARkWBWxvY2FsMRMw
# EQYKCZImiZPyLGQBGRYDZm1nMRMwEQYDVQQDEwpGTUcgU3ViIENBMB4XDTIzMDgy
# ODE1NDQ0NloXDTMyMDcyMDE1NTQzOFowdDEVMBMGCgmSJomT8ixkARkWBWxvY2Fs
# MRMwEQYKCZImiZPyLGQBGRYDZm1nMRIwEAYDVQQLEwlFbXBsb3llZXMxFTATBgNV
# BAsTDFZvbmFnZSBVc2VyczEbMBkGA1UEAxMSQ2hyaXN0b3BoZXIgQ29ubGV5MIIB
# IjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAz4Gnd112Q5MThKtIMJ9t3iFE
# NxaTUlkJPyuhMbP3dbsyUTyM87nDlEHUlBrHiJ8tvgcdXtYiFhjP9aCQOQnA+ABu
# f0DgM/jxDzz+6eKHmk6+SkHPRK0LzUf2E5BRthpLiR4A9WQklakcghbHZxc1vSJW
# +xq/AKvlpsJm3yJJPFLFedSUwQKmGgDqangJaDz3GANLpvdvhGNeDoAMHaQkE6WI
# 4T0GCRHE78EN8ibm2Bk3FlJCMKANEpW9Ztm9O33JQ2xxaYilV/r5RlJJB9d7XEFm
# BiAYr2JtAboecQRdMqbfkYTSP0c9bJpJg5g77QkVtYjlLoMlWtFjtRdNcu+vtQID
# AQABo4IDiTCCA4UwPAYJKwYBBAGCNxUHBC8wLQYlKwYBBAGCNxUIhvPzEdS3H4f9
# gTmG49Eah+7CCXWD3r84hp+KHAIBZAIBCTATBgNVHSUEDDAKBggrBgEFBQcDAzAL
# BgNVHQ8EBAMCB4AwGwYJKwYBBAGCNxUKBA4wDDAKBggrBgEFBQcDAzAdBgNVHQ4E
# FgQUdGP8QvYwRJB/lExuGzV+CpNpinAwHwYDVR0jBBgwFoAUET3L/lM/pQhM2LrH
# XBqbnzmSDKswggEJBgNVHR8EggEAMIH9MIH6oIH3oIH0hoG7bGRhcDovLy9DTj1G
# TUclMjBTdWIlMjBDQSxDTj1GTUdXUzE5UlROU0NBMDEsQ049Q0RQLENOPVB1Ymxp
# YyUyMEtleSUyMFNlcnZpY2VzLENOPVNlcnZpY2VzLENOPUNvbmZpZ3VyYXRpb24s
# REM9Zm1nLERDPWxvY2FsP2NlcnRpZmljYXRlUmV2b2NhdGlvbkxpc3Q/YmFzZT9v
# YmplY3RDbGFzcz1jUkxEaXN0cmlidXRpb25Qb2ludIY0aHR0cDovL3BraS5mb3Jz
# bWFyc2hncm91cC5jb20vcGtpL0ZNRyUyMFN1YiUyMENBLmNybDCCAR8GCCsGAQUF
# BwEBBIIBETCCAQ0wgasGCCsGAQUFBzAChoGebGRhcDovLy9DTj1GTUclMjBTdWIl
# MjBDQSxDTj1BSUEsQ049UHVibGljJTIwS2V5JTIwU2VydmljZXMsQ049U2Vydmlj
# ZXMsQ049Q29uZmlndXJhdGlvbixEQz1mbWcsREM9bG9jYWw/Y0FDZXJ0aWZpY2F0
# ZT9iYXNlP29iamVjdENsYXNzPWNlcnRpZmljYXRpb25BdXRob3JpdHkwXQYIKwYB
# BQUHMAKGUWh0dHA6Ly9wa2kuZm9yc21hcnNoZ3JvdXAuY29tL3BraS9GTUdXUzE5
# UlROU0NBMDEuZm1nLmxvY2FsX0ZNRyUyMFN1YiUyMENBKDIpLmNydDBHBgNVHREE
# QDA+oCUGCisGAQQBgjcUAgOgFwwVQ0NvbmxleUBmb3JzbWFyc2guY29tgRVDQ29u
# bGV5QGZvcnNtYXJzaC5jb20wTQYJKwYBBAGCNxkCBEAwPqA8BgorBgEEAYI3GQIB
# oC4ELFMtMS01LTIxLTU3NjcxNDQwNC0zNTc2MTY3OTU4LTQwMTk5Nzc3My02MTg1
# MA0GCSqGSIb3DQEBCwUAA4IBAQCU005mKqjk+9apz5ms1cXKOFIXCQ+ojvAGx2WU
# XpDaF7DnIIjp+PhOQW+tHnCAZrL1LtosAl0W9TJujT/sHQdcZItQDKFKEhpc3IUT
# J7X/496AD+TSOSaQWw8O/Anrm6cAGvBy48xyLQHWp7xtTRGP4beulsNZY2Z5xzmy
# 4DypXqMG/MIHE/HF929E6DtUdPRcyB3pbtQeJLP8/dm3fsVtWr44zTv89In0kVB+
# cb7HPEFaAt2U/vTexI/6mUuao+/hQTMAehc5bzsGQVkMYtyk3Yh2TV2ADyV7UeoE
# Sb+MWbzie9Hv1vyFbZupzyNFRK4y5eK8ZCaF4O323dJgD4vVMYICCjCCAgYCAQEw
# WDBBMRUwEwYKCZImiZPyLGQBGRYFbG9jYWwxEzARBgoJkiaJk/IsZAEZFgNmbWcx
# EzARBgNVBAMTCkZNRyBTdWIgQ0ECEy4AAAUH7aEklGBBiLkAAgAABQcwDQYJYIZI
# AWUDBAIBBQCggYQwGAYKKwYBBAGCNwIBDDEKMAigAoAAoQKAADAZBgkqhkiG9w0B
# CQMxDAYKKwYBBAGCNwIBBDAcBgorBgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAv
# BgkqhkiG9w0BCQQxIgQgooRls+zQaj2tOr2UxNIbfiGCYvQ17/ymnvgSKkcbw64w
# DQYJKoZIhvcNAQEBBQAEggEAdYkaN0Oq5lx5dgiLczxi6uWMCIDcJzUZo6hOJMVa
# acrDUzT0uWV/MCQE4Y3RcUY53929KBT946n1seNpNlPssv4BTFJrEk4Vp5/IgqyG
# e2/MjqfgpSO9zyLcR3t8xLsmwOMNEVKMT/ihgxyTs/JW86wxSWj9WbJF2Q5mI5m1
# T06RhOEepdNJsInvLBa9z15Mv27o4lVdWZu7p9rYWIFW3F3ujf0mXQ5YXAlooN1h
# dHDSa2AhFq8aNYMT51Nlzb6MSXeJxzF8/P9X0FFoT6ZoDdoh2pDvjPuLy74ZzGu7
# wRDF4PugU784I7Ji0fDny37K4qokKlv/i7+T76rzi39UQA==
# SIG # End signature block
