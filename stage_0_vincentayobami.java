public class stage_0_vincentayobami
{
    static int hammingDist(String str1, String str2)
    {
        int i = 0, count = 0;
        while (i < str1.length())
        {
            if (str1.charAt(i) != str2.charAt(i))
                count++;
                i++;
            
        }
        return count;
    }
    
	public static void main(String[] args) {
	    System.out.println("Name: Lawal Vincent Ayobami");
        System.out.println("Email: vincentlawal21@gmail.com");
        System.out.println("Slack: @vincentayobami");
        System.out.println("Biostack: Genomics");
        System.out.println("Twitter: @vincentayobami");
        
        System.out.println("Hamming Distance: " + hammingDist("@vincentayobami", "@vincentayobami") );
        
	}
}
