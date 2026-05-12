// Demonstrating ArrayList
import java.util.ArrayList;

public class ArrayListDemo {
    public static void main(String[] args) {
        ArrayList<String> list = new ArrayList<>();

        list.add("Apple");
        list.add("Banana");
        list.add("Orange");

        System.out.println("ArrayList: " + list);

        list.remove("Banana");
        System.out.println("After removal: " + list);

        System.out.println("Contains Apple? " + list.contains("Apple"));
    }
}
