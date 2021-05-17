public class LabA3 {

    public static void main(String[] args) {
    int i,j,k;
    i=Integer.parseInt(args[0]);
    j=Integer.parseInt(args[1]);
	
	String x = Integer.toBinaryString(i);
	String y = Integer.toBinaryString(j);
	
	int kand = i & j;   // and 
	int kor = i | j;   // or 
	int kxor = i ^ j;   // xor 
	int knot = ~i;      // not 
	
	String k1 = Integer.toBinaryString(kand);
	String k2 = Integer.toBinaryString(kor);
	String k3 = Integer.toBinaryString(kxor);
	String k4 = Integer.toBinaryString(knot);
	
	System.out.println("i: " + Integer.toBinaryString(i) + " j: " + Integer.toBinaryString(j) + " k1: " + k1 + " k2: " + k2 + " k3: " + k3 + " k4: " + k4);
    }
}
    
