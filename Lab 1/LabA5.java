public class LabA5 {

    public static void main(String[] args) {
    int i,j,k;
    i=Integer.parseInt(args[0]);
    
    j = i << 21;
    j = j >>> 31;
    
    int mask = 1024;
    k = i & mask;
    k = k >> 10;
    
    
    System.out.println("i: " + i + " j: " + j + " k: " + k);
    }
}
    
