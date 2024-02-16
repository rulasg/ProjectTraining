
$IMAGE_GALLERY_PATH = "~/images"

<#
.SYNOPSIS
    Copy an image to the images folder and return the markdown definition for the image.
#>
function Copy-Image{
    [CmdletBinding()]
    [Alias("ci")]
    param(
        [Parameter(Mandatory,Position=0)][string]$ImageName
        )

        $destination = "./images"

    $files = $IMAGE_GALLERY_PATH | Join-Path -ChildPath "$ImageName.*" | Get-ChildItem

    $files | Copy-Item -Destination $destination

    $retDef = @()

    $files | ForEach-Object {
        $name = $_ | split-path -Leaf
        $defTag = $_ | split-path -LeafBase
        $output = $destination | join-path -ChildPath $name
        $def = "[$defTag]: $output"

        $retDef += $def
    }

    $retDef | Set-Clipboard

    return $retDef
}

<#
.SYNOPSIS
    Convert RGB values to a hex color code.
#>
function ConvertTo-RGBToHex {
    param(
        [Parameter(Mandatory,Position=0)][int]$Red,
        [Parameter(Mandatory,Position=1)][int]$Green,
        [Parameter(Mandatory,Position=2)][int]$Blue
    )

    return "#{0:X2}{1:X2}{2:X2}" -f $Red, $Green, $Blue
}