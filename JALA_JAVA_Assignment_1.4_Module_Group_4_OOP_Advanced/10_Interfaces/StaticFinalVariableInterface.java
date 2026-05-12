// Interface with static final variable
interface StaticFinalInterface {
    int CONSTANT = 100; // static final by default
}

public class StaticFinalVariableInterface implements StaticFinalInterface {
    public static void main(String[] args) {
        System.out.println("Constant value: " + CONSTANT);
    }
}
