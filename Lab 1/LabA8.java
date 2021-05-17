public class LabA8 {

    public static void main(String[] args) {
    int i,j,k;
    i=Integer.parseInt(args[0]);
    j = 1 + ~i;
    System.out.println(Integer.toBinaryString(i) + " " + j + " " + Integer.toBinaryString(j));
    }
}
    
