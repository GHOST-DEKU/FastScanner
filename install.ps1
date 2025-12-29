# FastScanner Installer for Windows

$ErrorActionPreference = "Stop"

# 1. Define Paths
$LibDir = "$env:USERPROFILE\JavaLibs"
$InstallDir = "$LibDir\FastScanner"

Write-Host "Installing FastScanner..." -ForegroundColor Cyan

# 2. Create Directory
if (!(Test-Path $InstallDir)) {
    New-Item -ItemType Directory -Force -Path $InstallDir | Out-Null
    Write-Host "Created directory: $InstallDir" -ForegroundColor Green
}

# 3. Copy Files
Copy-Item -Path ".\FastScanner\FastScanner.java" -Destination "$InstallDir\FastScanner.java" -Force
Write-Host "Copied source files." -ForegroundColor Green

# 4. Compile
Write-Host "Compiling..." -ForegroundColor Cyan
try {
    javac "$InstallDir\FastScanner.java"
    Write-Host "Compilation successful." -ForegroundColor Green
} catch {
    Write-Error "Compilation failed. Ensure 'javac' is installed and in your PATH."
}

# 5. Update CLASSPATH
$CurrentClassPath = [System.Environment]::GetEnvironmentVariable("CLASSPATH", "User")
$NewPathEntry = "$LibDir"

if ($null -eq $CurrentClassPath) {
    # If no CLASSPATH exists, create it
    [System.Environment]::SetEnvironmentVariable("CLASSPATH", ".;$NewPathEntry", "User")
    Write-Host "Created CLASSPATH environment variable." -ForegroundColor Green
} elseif ($CurrentClassPath -notlike "*$NewPathEntry*") {
    # If CLASSPATH exists but doesn't have our lib, append it
    $NewClassPath = "$CurrentClassPath;$NewPathEntry"
    [System.Environment]::SetEnvironmentVariable("CLASSPATH", $NewClassPath, "User")
    Write-Host "Updated CLASSPATH to include $NewPathEntry" -ForegroundColor Green
} else {
    Write-Host "CLASSPATH already configured." -ForegroundColor Yellow
}

Write-Host "`nInstallation Complete!" -ForegroundColor Cyan
Write-Host "IMPORTANT: You MUST restart your terminal (and VS Code) for changes to take effect." -ForegroundColor Red
