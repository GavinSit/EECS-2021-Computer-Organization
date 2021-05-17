public class LabA6 {

    public static void main(String[] args) {
    int i,j,k;
    i=Integer.parseInt(args[0]);
    
	j = i | (1 << 10);
    k = i & ~ (1 << 11);
	
	k = i << 11;
    System.out.println("i: " + i + " j: " + Integer.toBinaryString(j) + " k: " + Integer.toBinaryString(k));
    }
}
    
