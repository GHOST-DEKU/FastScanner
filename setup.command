#!/bin/bash

# FastScanner Installer for Linux/macOS
# Self-contained: Embeds FastScanner.java source code.

LIB_DIR="$HOME/JavaLibs"
INSTALL_DIR="$LIB_DIR/FastScanner"
SOURCE_FILE="$INSTALL_DIR/FastScanner.java"

echo -e "\033[0;36mInstalling FastScanner...\033[0m"

# 1. Create Directory
mkdir -p "$INSTALL_DIR"
echo -e "\033[0;32mCreated directory: $INSTALL_DIR\033[0m"

# 2. Embed Source Code
echo -e "\033[0;36mExtracting source code...\033[0m"
cat << 'EOF' > "$SOURCE_FILE"
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
EOF

echo -e "\033[0;32mExtracted FastScanner.java\033[0m"

# 3. Compile
echo -e "\033[0;36mCompiling...\033[0m"
if javac "$SOURCE_FILE"; then
    echo -e "\033[0;32mCompilation successful.\033[0m"
else
    echo -e "\033[0;31mCompilation failed. Ensure 'javac' is installed.\033[0m"
    exit 1
fi

# 4. Update CLASSPATH
SHELL_CONFIG=""
if [ -f "$HOME/.zshrc" ]; then
    SHELL_CONFIG="$HOME/.zshrc"
elif [ -f "$HOME/.bashrc" ]; then
    SHELL_CONFIG="$HOME/.bashrc"
    
# If neither exists, perform a rudimentary check for bash_profile or profile
elif [ -f "$HOME/.bash_profile" ]; then
    SHELL_CONFIG="$HOME/.bash_profile"
elif [ -f "$HOME/.profile" ]; then
    SHELL_CONFIG="$HOME/.profile"
fi


if [ -n "$SHELL_CONFIG" ]; then
    if grep -q "export CLASSPATH=.*$LIB_DIR" "$SHELL_CONFIG"; then
        echo -e "\033[0;33mCLASSPATH already configured in $SHELL_CONFIG\033[0m"
    else
        echo "" >> "$SHELL_CONFIG"
        echo "# JavaLibs CLASSPATH" >> "$SHELL_CONFIG"
        echo "export CLASSPATH=\".:$LIB_DIR:\$CLASSPATH\"" >> "$SHELL_CONFIG"
        echo -e "\033[0;32mAdded CLASSPATH to $SHELL_CONFIG\033[0m"
        echo -e "\033[0;33mRun 'source $SHELL_CONFIG' to apply changes immediately.\033[0m"
    fi
else
    echo -e "\033[0;31mCould not detect shell configuration file (.bashrc/.zshrc). Please add this manually:\033[0m"
    echo "export CLASSPATH=\".:$LIB_DIR:\$CLASSPATH\""
fi

echo -e "\n\033[0;36mInstallation Complete!\033[0m"
