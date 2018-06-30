# Utilities

In this repo are some scripts that have helped me in the past.

### p12toBase64.ps1

I came across this script on Stack Overflow when I was researching Azure Notification Hub. Specifically, I was attempting to configure the Notification Hub with Apple Push Notification Service. The Microsoft documentation only specified that the `apnsCertificate` was supposed to be a "A certificate (in base 64 format) provided by Apple on the iOS Provisioning Portal." I found several ways to accomplish this, but the only thing that worked for me is now in this Powershell script.

#### Usage

1.  Download the `p12toBase64.ps1` file.
2.  Copy and execute the following command in a Powershell shell passing the `.p12` file you want to convert as the argument for `-cert`. The `-cert` parameter is **required** (obviously). You may pass in an _optional_ argument to `-outputFile`. This will be the file that the script will place the Base64 string into. If you do not supply an argument to the `-outputFile` parameter, the script will place the Base64 string into a file call `output-p12toBase64.txt`.

```powershell
PS> cd { to the directory you downloaded the p12toBase64.ps1 into }
PS> .\p12toBase64.ps1 -cert { path_to_the_cert.p12 : required } -outputFile { file_that_doesnt_exist_yet.txt : optional }
```
