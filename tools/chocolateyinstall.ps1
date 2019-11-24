$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'ftp://ftp.fu-berlin.de/pc/games/idgames/levels/doom2/Ports/megawads/hellbnd.zip'
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = "$(Join-Path $toolsDir wad)"
  url           = $url
  checksum      = '04484ACEFB12EE496F662B085660C9F3FAD92B519A29BC4A6814DE3433D695FD'
  checksumType  = 'sha256'
}
Install-ChocolateyZipPackage @packageArgs
