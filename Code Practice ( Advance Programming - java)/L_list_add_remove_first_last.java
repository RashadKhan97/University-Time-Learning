
package l_list_add_remove_first_last;

import java.util.LinkedList;


public class L_list_add_remove_first_last {

   
    public static void main(String[] args) {
       LinkedList<String> a = new LinkedList<>();
        a.add("M");
        a.add("R");
        a.add("C");
        a.remove(2);

        System.out.println(" Result 1 :"+a);
       // System.out.print(a);
        a.add("Q");
        a.add("P");
        a.remove("Q");

        System.out.println(" Result 2 :"+a );
       // System.out.print(a);
        
        a.addFirst("RASHAD");
        a.addLast("KHAN");
        a.remove(2);
         System.out.println(" Result 3 :"+a);
       // System.out.print(a);
        
    }
    
}
