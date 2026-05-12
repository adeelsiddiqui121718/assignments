// Interface with one method
interface SingleMethodInterface {
    void show();
}

// Class implementing the interface
public class SingleMethodImpl implements SingleMethodInterface {
    public void show() {
        System.out.println("Single method implemented.");
    }

    public static void main(String[] args) {
        SingleMethodImpl obj = new SingleMethodImpl();
        obj.show();
    }
}
