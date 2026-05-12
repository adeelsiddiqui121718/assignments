// Function to test if array contains a specific value
public class ArrayContainsValue {
    public static void main(String[] args) {
        int[] arr = {5, 10, 15, 20};
        int target = 15;
        boolean found = false;

        for (int i = 0; i < arr.length; i++) {
            if (arr[i] == target) {
                found = true;
                break;
            }
        }

        System.out.println("Contains " + target + " ? " + found);
    }
}
