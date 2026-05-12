// Function to get difference of largest and smallest value
public class ArrayDiffLargestSmallest {
    public static void main(String[] args) {
        int[] arr = {12, 45, 2, 67, 34};
        int min = arr[0], max = arr[0];

        for (int i = 1; i < arr.length; i++) {
            if (arr[i] < min) min = arr[i];
            if (arr[i] > max) max = arr[i];
        }

        int diff = max - min;
        System.out.println("Difference between largest and smallest: " + diff);
    }
}
