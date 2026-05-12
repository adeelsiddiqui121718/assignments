// Demonstrating TreeMap
import java.util.TreeMap;

public class TreeMapDemo {
    public static void main(String[] args) {
        TreeMap<String, Integer> map = new TreeMap<>();

        map.put("C", 3);
        map.put("A", 1);
        map.put("B", 2);

        System.out.println("TreeMap (sorted by keys): " + map);

        System.out.println("First key: " + map.firstKey());
        System.out.println("Last key: " + map.lastKey());
    }
}
