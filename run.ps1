Param(
  [int]$Port = 8000
)

$ErrorActionPreference = "Stop"

function Test-Command($name) {
  return [bool](Get-Command $name -ErrorAction SilentlyContinue)
}

if (-not (Test-Command "php")) {
  Write-Host "PHP is not installed or not in PATH." -ForegroundColor Yellow
  Write-Host ""
  Write-Host "Option A (recommended): Install XAMPP, start Apache+MySQL, then open:" -ForegroundColor Cyan
  Write-Host "  http://localhost/loan-management-system-main/login.php"
  Write-Host ""
  Write-Host "Option B: Install PHP (add to PATH), then re-run this script to start a local dev server." -ForegroundColor Cyan
  exit 1
}

Write-Host "Starting PHP built-in server on http://localhost:$Port" -ForegroundColor Green
Write-Host "Press Ctrl+C to stop." -ForegroundColor DarkGray
php -S "localhost:$Port" -t .
