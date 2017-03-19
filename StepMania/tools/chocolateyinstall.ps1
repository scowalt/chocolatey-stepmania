$ErrorActionPreference = 'Stop';

$packageName= 'StepMania'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/stepmania/stepmania/releases/download/v5.0.12/StepMania-5.0.12-win32.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  softwareName  = 'StepMania*'

  checksum      = 'B3A6C5F70CC35FA5A756E489B545D495309B2ABDC5EFAA7A78ABBACDC2AA8F2C'
  checksumType  = 'sha256'

  silentArgs   = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
