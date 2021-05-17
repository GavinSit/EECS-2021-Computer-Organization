public class LabA7 {

    public static void main(String[] args) {
    int i,j,k;
    i = Integer.parseInt(args[0]);
	
	j = (i & 0x10) << 20; 
	k = (i & 0x20) >> 10;
	
	i = (i & j) | (i & ~j);
	i = (i & k) | (i & ~k);

    
    System.out.println(Integer.toBinaryString(i));
    }
}
    
