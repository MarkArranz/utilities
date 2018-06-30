param(
    [ValidateScript( {
            if ( -Not ($_ | Test-Path) ) {
                throw "File or folder does not exist"
            }
            if ( -Not ($_ | Test-Path -PathType Leaf) ) {
                throw "The Cert argument must be a file. Folder paths are not allowed."
            }
            if ($_ -notmatch "\.p12") {
                throw "The file specified in the cert argument must be of type p12"
            }
            return $true
        })]
    [System.IO.FileInfo] $cert,
    [string] $outputFile = "output-p12toBase64.txt"
)
$fileContentBytes = get-content $cert -Encoding Byte
[System.Convert]::ToBase64String($fileContentBytes) | Out-File $outputFile
Write-Host "Your .p12 cert was successfully converted. Check the contents of $($outputFile)" -ForegroundColor Green