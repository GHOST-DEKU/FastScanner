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
