// Demonstrating TreeSet
import java.util.TreeSet;

public class TreeSetDemo {
    public static void main(String[] args) {
        TreeSet<Integer> set = new TreeSet<>();

        set.add(50);
        set.add(10);
        set.add(30);
        set.add(20);

        System.out.println("TreeSet (sorted): " + set);

        System.out.println("First element: " + set.first());
        System.out.println("Last element: " + set.last());
    }
}
