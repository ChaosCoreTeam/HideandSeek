$ErrorActionPreference= 'silentlycontinue' 

$fileNameZip = "hns.zip"
$fileNamePK3 = "hns.pk3"

Remove-Item $fileNameZip
Remove-Item $fileNamePK3
Compress-Archive -Path "$((Get-Item .).FullName)\source\*" -DestinationPath $fileNameZip -CompressionLevel Fastest
Rename-Item -Path $fileNameZip -NewName $fileNamePK3
