package array_add_remove;

import java.util.ArrayList;

public class Array_add_remove {

    public static void main(String[] args) {
        ArrayList<String> a = new ArrayList<>();
        a.add("M");
        a.add("R");
        a.add("C");
        a.remove(2);

        System.out.print(" Result 1 :");
        System.out.print(a);
        a.add("Q");
        a.add("P");
        a.remove("Q");

        System.out.println(" Result 2 :");
        System.out.print(a);
    }

}
