$ErrorActionPreference= 'silentlycontinue' 

$fileNamePK3 = "hns.pk3"
$fileNameZip = "hns.zip"
$sourceDir = "source"
$sourceBackupDir = "source.backup"

Remove-Item -Recurse $sourceBackupDir

Copy-Item -Path $fileNamePK3 -Destination $fileNameZip
Rename-Item -Path $sourceDir -NewName $sourceBackupDir

Expand-Archive -Path $fileNameZip -DestinationPath $sourceDir

Remove-Item $fileNameZip
