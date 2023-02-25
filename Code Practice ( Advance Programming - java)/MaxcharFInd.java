package maxcharfind;

import java.util.Scanner;

public class MaxcharFInd {

    public static void main(String[] args) {

        String str;
        char max_repeated_char = 0;
        int i, max = 0;
        int[] frequency = new int[256];
        System.out.print("Enter the String Here: ");
        Scanner sc = new Scanner(System.in);
        str = sc.nextLine();

        for (i = 0; i < str.length(); i++) {
            frequency[str.charAt(i)]++;
        }

        for (i = 0; i < str.length(); i++) {
            char c = str.charAt(i);
            if (max < frequency[c]) {
                max = frequency[c];
                max_repeated_char = c;
            }
        }
        System.out.println("Maximum Repeated Charecter: " +max_repeated_char);
    }
}
