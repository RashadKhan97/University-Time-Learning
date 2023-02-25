package arrbound;

public class Arrbound {

    public static void main(String[] args) {
        int[] array = new int[3];

        try {
            for (int i = 0; i < 5; i++) {
                System.out.println(array[i] + "");
            }
        } catch (ArrayIndexOutOfBoundsException e) {
                System.out.println("Array Index out of Bounds");
        }

    }
}
