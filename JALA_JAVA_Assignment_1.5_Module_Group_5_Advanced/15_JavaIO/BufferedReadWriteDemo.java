// Using BufferedReader and BufferedWriter
import java.io.*;

public class BufferedReadWriteDemo {
    public static void main(String[] args) {
        try {
            // Writing with BufferedWriter
            BufferedWriter bw = new BufferedWriter(new FileWriter("buffered.txt"));
            bw.write("Buffered Writer Example");
            bw.newLine();
            bw.write("Second line");
            bw.close();

            // Reading with BufferedReader
            BufferedReader br = new BufferedReader(new FileReader("buffered.txt"));
            String line;
            while ((line = br.readLine()) != null) {
                System.out.println(line);
            }
            br.close();
        } catch (IOException e) {
            System.out.println("Error: " + e);
        }
    }
}
