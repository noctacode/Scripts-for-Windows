<# this script finds files that are present in both locations#>

$folder1 = Get-ChildItem -Recurse -path "C:\folderName"
$folder2 = Get-ChildItem -Recurse -path "D:\otherFolderName"

Compare-Object -ReferenceObject $folder1 -DifferenceObject $folder2
