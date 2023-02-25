/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package linklist_add_remove_addfirst_addlast;



import java.util.linkList;

public class linklist_add_remove_addfirst_addlast {

    public static void main(String[] args) {
        linkList<String> a = new linkList<>();
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
