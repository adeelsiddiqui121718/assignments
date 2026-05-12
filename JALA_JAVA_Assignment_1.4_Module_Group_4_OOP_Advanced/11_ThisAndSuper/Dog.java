// Calling parent class constructor using 'super'
class Animal {
    Animal(String type) {
        System.out.println("Animal constructor called: " + type);
    }
}

public class Dog extends Animal {
    Dog() {
        super("Dog"); // calling parent constructor
        System.out.println("Dog constructor called");
    }

    public static void main(String[] args) {
        Dog obj = new Dog();
    }
}
