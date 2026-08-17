$ErrorActionPreference = "Stop"

$repositoryRoot = $PSScriptRoot
$projectsRoot = Split-Path -Parent $repositoryRoot
$bundledRubyRoot = Join-Path $projectsRoot "_tools\Ruby32Devkit"
$bundledRubyBin = Join-Path $bundledRubyRoot "bin"
$bundledMsysBin = Join-Path $bundledRubyRoot "msys64\usr\bin"

if (Test-Path -LiteralPath (Join-Path $bundledRubyBin "ruby.exe")) {
    $env:Path = "$bundledRubyBin;$bundledMsysBin;$env:Path"
}
elseif (-not (Get-Command ruby -ErrorAction SilentlyContinue)) {
    throw "Ruby was not found. Install Ruby+DevKit or place it at $bundledRubyRoot."
}

Push-Location $repositoryRoot
try {
    bundle check
    if ($LASTEXITCODE -ne 0) {
        bundle install --jobs 4 --retry 2
    }

    bundle exec jekyll build --config _config.yml,local/_config.local.yml
    if ($LASTEXITCODE -ne 0) {
        throw "Jekyll build failed with exit code $LASTEXITCODE."
    }
}
finally {
    Pop-Location
}
