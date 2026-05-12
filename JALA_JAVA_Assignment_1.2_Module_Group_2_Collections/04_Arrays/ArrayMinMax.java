// Function to find minimum and maximum value of an array
public class ArrayMinMax {
    public static void main(String[] args) {
        int[] arr = {12, 45, 2, 67, 34};
        int min = arr[0], max = arr[0];

        for (int i = 1; i < arr.length; i++) {
            if (arr[i] < min) min = arr[i];
            if (arr[i] > max) max = arr[i];
        }

        System.out.println("Minimum: " + min);
        System.out.println("Maximum: " + max);
    }
}
