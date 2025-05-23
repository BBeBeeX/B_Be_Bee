# UNCOMMENT THESE LINES TO BUILD FROM LATEST COMMIT
# git reset --hard origin/main
# git pull

cd ../app

fvm flutter clean
fvm flutter pub get
fvm flutter build windows

Compress-Archive -Path build/windows/x64/runner/Release/* -DestinationPath B_Be_Bee-XXX-windows-x86-64.zip

cd ..

Write-Output 'Generated Windows zip!'
# SIG # Begin signature block
# MIIFjAYJKoZIhvcNAQcCoIIFfTCCBXkCAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUQyG96ubezvTuCzcvQdZZ+GiY
# WxqgggMuMIIDKjCCAhKgAwIBAgIQJcaLXbhqqr5JdbIEXkJRqTANBgkqhkiG9w0B
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
# AQQBgjcCARUwIwYJKoZIhvcNAQkEMRYEFNJePjXC46Y/GyhPGYAmZ9x3VWeCMA0G
# CSqGSIb3DQEBAQUABIIBAJSB6miHtfBkVRAhkBngOd3ppVnSPIKt3YpUHrH+RMzq
# R2rq1682G2vfqWCUHNwBKB9qKd18WogblVjQ4+jQTmgYYmQP5NoNYYrOwBHvdHB4
# 9rq3/Qy+u/rUuM+GxjZKK5JB5c7dzcsINENABJ2LIMU6CrRBLBqVi6MfFODNftE9
# ebyZm1oO4L+AcdNLUngwGEq8QYWXIanS66OWRZidSgn7IZAT2zg6V71Ata/xts7X
# HvVLa7ruEz6pTHBNNQBzz4muSpJ/Z1tQNpKr9WCUB6SURjOpHxjcC1OLbGYKPGm1
# +UHv2OrUFj1IVB46uWPKoI1Z22bR66x1dHvcBn2NF0A=
# SIG # End signature block
