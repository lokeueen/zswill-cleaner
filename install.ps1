$repo = "lokeueen/zswill-cleaner"
$exe = "zswill-cleaner.exe"
$url = "https://raw.githubusercontent.com/$repo/main/$exe"
$out = Join-Path $env:TEMP $exe

Write-Host "Downloading ZSWILL System Cleaner..." -ForegroundColor Cyan
try {
    Invoke-WebRequest -Uri $url -OutFile $out -UseBasicParsing
    Write-Host "Downloaded to: $out" -ForegroundColor Green
    Write-Host "Running ZSWILL..." -ForegroundColor Cyan
    Start-Process -FilePath $out -Verb RunAs
} catch {
    Write-Host "Download failed: $_" -ForegroundColor Red
    exit 1
}
