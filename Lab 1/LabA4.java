public class LabA4 {

    public static void main(String[] args) {
    int i,j,k;
    i=Integer.parseInt(args[0]);
    
    int DecLLS = i << 2;
    int DecLRS = i >>> 1;
    int DecARS = i >> 1;
    
    String lls = Integer.toBinaryString(i << 2);
    String lrs = Integer.toBinaryString(i >>> 1);
    String ars = Integer.toBinaryString(i >> 1);
    System.out.println("i: " + Integer.toBinaryString(i) + " lls: " + lls + " lrs: " + lrs + " ars: " + ars + " DecLLS: " + DecLLS + " DecLRS: " + DecLRS + " DecARS: " + DecARS);
    }
}
    
