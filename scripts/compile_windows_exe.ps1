cd ../app

fvm flutter clean
fvm flutter pub get
fvm flutter build windows

Remove-Item "D:\inno" -Force  -Recurse -ErrorAction SilentlyContinue
New-Item -ItemType Directory -Force -Path "D:\inno"
Copy-Item -Path "build\windows\x64\runner\Release\*" -Destination "D:\inno" -Recurse
Copy-Item -Path "assets\packaging\logo.ico" -Destination "D:\inno"

cd ..

Copy-Item -Path "scripts\windows\x64\*" -Destination "D:\inno" -Recurse
Remove-Item "D:\inno-result" -Force  -Recurse -ErrorAction SilentlyContinue
New-Item -ItemType Directory -Force -Path "D:\inno-result"
iscc .\scripts\compile_windows_exe-inno.iss

Write-Output 'Generated Windows exe installer!'

# SIG # Begin signature block
# MIIFjAYJKoZIhvcNAQcCoIIFfTCCBXkCAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUuHUSAnTFmUvj/ReasAevygqT
# OTmgggMuMIIDKjCCAhKgAwIBAgIQJcaLXbhqqr5JdbIEXkJRqTANBgkqhkiG9w0B
# AQsFADATMREwDwYDVQQDDAhCX0JlX0JlZTAeFw0yNTAzMTAxNTQ2MzhaFw0yNjAz
# MTAxNjA2MzhaMBMxETAPBgNVBAMMCEJfQmVfQmVlMIIBIjANBgkqhkiG9w0BAQEF
# AAOCAQ8AMIIBCgKCAQEAxnRE6MuiIAZfS8lmWJz4O9R9RWZDa5REeQYdRvK0Dw0f
# ROIrJ6Cj2m+aX9Eo9/KbqbyYSx0dOgR/SNWgouLy9skhrIXdkEzGJGhck9WJmxE2
# QsrBRxrEfMHRnO+d7M5ef8Yi6TYwdHE0RUIFVY4Wv1ygZ/Y1aOeUuUMSNugKHFjl
# DABQZK0UyzSvbkivcpUuyL7u32fNIRPtNa4hngdqU+NdYNZnWFYHpPPfNYxh/6Ft
# A8WARZFx0lbUmOUOwhNI+ic+Iiucj5o+pOOFIo8D4eJkhvrqk/Y16DCMKyTY2TqX
# D6+QOHuYf5ITjL/GXJWBbU7YOI3IyZ+MDbzAqDSMgQIDAQABo3oweDAOBgNVHQ8B
# Af8EBAMCB4AwEwYDVR0lBAwwCgYIKwYBBQUHAwMwMgYDVR0RBCswKaAnBgorBgEE
# AYI3FAIDoBkMF3BhdHRpZnVsbGVyQGNvbnRvc28uY29tMB0GA1UdDgQWBBRuJW4g
# GROSW8y1vOJ3k4KnFs0pTjANBgkqhkiG9w0BAQsFAAOCAQEAHuUpMbOFS7f50nf0
# zDcur+PToCZomMhvsm1NnLl2tl8ZlDKSwt+DzcZf5ST84Q7qexS+9uK1/HsXijW2
# S0bJloEdELmxcu5rNr5eL1yyNRTMMUOtFs5iPgJ1ZyYR9JRbdEN/0iyZjanpJ5uz
# p+sKxzcVWorNAkn7nqnFkxwpy9qdJTMATNgh/ncV6aKR+DCYi1pwyX/xpffYrXbZ
# FYmzKwdpY7K3j2fpGZbBG+gItx2ptyzGUd7nKyE0VHgLaZJa+Y/TmQ62GysfPKtx
# Xzt3GsxFSPOi8hrmxZD6HXvinaBhOZLzXgu68ce18tp0c4o3dp5wp5JTonsMkxgC
# buZ/4TGCAcgwggHEAgEBMCcwEzERMA8GA1UEAwwIQl9CZV9CZWUCECXGi124aqq+
# SXWyBF5CUakwCQYFKw4DAhoFAKB4MBgGCisGAQQBgjcCAQwxCjAIoAKAAKECgAAw
# GQYJKoZIhvcNAQkDMQwGCisGAQQBgjcCAQQwHAYKKwYBBAGCNwIBCzEOMAwGCisG
# AQQBgjcCARUwIwYJKoZIhvcNAQkEMRYEFELayEuLduol1YiRB/E205kHrD4BMA0G
# CSqGSIb3DQEBAQUABIIBALYzWDgvfYNekZMkD6u1jUH/ImwrvfNsYIU74gNrLndq
# e/1QW2evxZ0ugKJqU2X1me55BSDG52JdmDrb1MYwaZig96Pwvxitjo9xuVkqY58o
# RcZqQdMedSmZLRL5amnOK7sxow1NyP9oumRaff5OCu5hOStF7kawscmlWPBWl1QY
# idl3IjIbFZcZ25pl33t5CJS/GOArOFEZXBkW77Q0SgqGlVj05tIvXwqCFZGzBuKL
# 0D6y5ZDB25gcICO75Z/P4iRZr5yCZdy7pDlSeGWHKvclIgJQdR1GFVTY2fnINEGd
# D8NSCPScXV/bHK9f5Y9qQpV2jNZ+4ODzZqAFVbcZJBY=
# SIG # End signature block
