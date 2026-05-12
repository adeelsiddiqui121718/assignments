// Demonstrating custom exception
class MyException extends Exception {
    public MyException(String message) {
        super(message);
    }
}

public class CustomExceptionDemo {
    public static void validateNumber(int num) throws MyException {
        if (num < 0) {
            throw new MyException("Number cannot be negative.");
        } else {
            System.out.println("Valid number: " + num);
        }
    }

    public static void main(String[] args) {
        try {
            validateNumber(-5);
        } catch (MyException e) {
            System.out.println("Caught custom exception: " + e.getMessage());
        }
    }
}
