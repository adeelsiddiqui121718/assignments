// Copying content from one file to another
import java.io.*;

public class FileCopyDemo {
    public static void main(String[] args) {
        try {
            FileReader fr = new FileReader("output.txt");
            FileWriter fw = new FileWriter("copy.txt");

            int ch;
            while ((ch = fr.read()) != -1) {
                fw.write(ch);
            }

            fr.close();
            fw.close();
            System.out.println("File copied successfully.");
        } catch (IOException e) {
            System.out.println("Error copying file: " + e);
        }
    }
}
