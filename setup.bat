<# :
@echo off
setlocal
echo Starting FastScanner Installer...
powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ([System.IO.File]::ReadAllText('%~f0'))"
pause
goto :eof
#>

# --- PowerShell Logic Starts Here ---
$ErrorActionPreference = "Stop"

# Use standard User Profile path
$LibDir = "$env:USERPROFILE\JavaLibs"
$InstallDir = "$LibDir\FastScanner"

Write-Host "Installing FastScanner..." -ForegroundColor Cyan

# 1. Create Directory
if (!(Test-Path $InstallDir)) {
    New-Item -ItemType Directory -Force -Path $InstallDir | Out-Null
    Write-Host "Created directory: $InstallDir" -ForegroundColor Green
}

# 2. Extract Embedded Source Code
$SourceCode = @"
package FastScanner;

import java.io.*;
import java.util.*;

public class FastScanner {
    BufferedReader br;
    StringTokenizer st;

    public FastScanner() {
        this(System.in);
    }

    public FastScanner(InputStream is) {
        br = new BufferedReader(new InputStreamReader(is));
        st = new StringTokenizer("");
    }

    public FastScanner(String fileName) throws FileNotFoundException {
        br = new BufferedReader(new FileReader(fileName));
        st = new StringTokenizer("");
    }

    public String next() {
        while (!st.hasMoreTokens()) {
            try {
                String line = br.readLine();
                if (line == null) return null;
                st = new StringTokenizer(line);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return st.nextToken();
    }

    public boolean hasNext() {
        while (!st.hasMoreTokens()) {
            try {
                String line = br.readLine();
                if (line == null) return false;
                st = new StringTokenizer(line);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return true;
    }

    public int nextInt() {
        return Integer.parseInt(next());
    }

    public long nextLong() {
        return Long.parseLong(next());
    }

    public double nextDouble() {
        return Double.parseDouble(next());
    }

    public char nextChar() {
        return next().charAt(0);
    }

    public String nextLine() {
        String str = "";
        try {
            if (st.hasMoreTokens()) {
                 str = st.nextToken("\n");
            } else {
                 str = br.readLine();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return str;
    }

    public int[] readIntArray(int n) {
        int[] a = new int[n];
        for (int i = 0; i < n; i++) a[i] = nextInt();
        return a;
    }

    public long[] readLongArray(int n) {
        long[] a = new long[n];
        for (int i = 0; i < n; i++) a[i] = nextLong();
        return a;
    }

    public double[] readDoubleArray(int n) {
        double[] a = new double[n];
        for (int i = 0; i < n; i++) a[i] = nextDouble();
        return a;
    }
}
"@

$DestFile = "$InstallDir\FastScanner.java"
Set-Content -Path $DestFile -Value $SourceCode -Encoding UTF8
Write-Host "Extracted source code." -ForegroundColor Green

# 3. Compile
if (Test-Path $DestFile) {
    Write-Host "Compiling..." -ForegroundColor Cyan
    try {
        javac "$DestFile"
        Write-Host "Compilation successful." -ForegroundColor Green
    } catch {
        Write-Host "Compilation failed. Ensure 'javac' is installed and in your PATH." -ForegroundColor Red
    }
}

# 4. Update CLASSPATH
$CurrentClassPath = [System.Environment]::GetEnvironmentVariable("CLASSPATH", "User")
$NewPathEntry = "$LibDir"

if ($null -eq $CurrentClassPath) {
    [System.Environment]::SetEnvironmentVariable("CLASSPATH", ".;$NewPathEntry", "User")
    Write-Host "Created CLASSPATH environment variable." -ForegroundColor Green
} elseif ($CurrentClassPath -notlike "*$NewPathEntry*") {
    $NewClassPath = "$CurrentClassPath;$NewPathEntry"
    [System.Environment]::SetEnvironmentVariable("CLASSPATH", $NewClassPath, "User")
    Write-Host "Updated CLASSPATH to include $NewPathEntry" -ForegroundColor Green
} else {
    Write-Host "CLASSPATH already configured." -ForegroundColor Yellow
}

Write-Host "`nInstallation Complete!" -ForegroundColor Cyan
Write-Host "You may need to restart your terminal/IDE for changes to take effect." -ForegroundColor Magenta
