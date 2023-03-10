<# this script find items that are in one folder, but not in the other #>
<# perhaps it works in both ways, perhaps not.. test that!#>

$folder1 = "C:\folderName"
$folder2 = "D:\otherFolderName"

function Get-Directories ($path)
{
    $PathLength = $path.length
    Get-ChildItem $path -Recurse | % {
        Add-Member -InputObject $_ -MemberType NoteProperty -Name RelativePath -Value $_.FullName.substring($PathLength+1)
        $_
    }
}

Compare-Object (Get-Directories $folder1) (Get-Directories $folder2) -Property RelativePath | Sort RelativePath, Name -desc
