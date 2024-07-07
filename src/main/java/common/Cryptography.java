package common;

public class Cryptography {

    public String EncryptMyData(String PlainText)
    {
    	String EncryptedText= "";
    	char ch;
    	int ASCIIValue,NewASCIIValue;
    	for(int x=0;x<PlainText.length();x++)
    	{
    		ch=PlainText.charAt(x);
    		 ASCIIValue =(int)ch;
    		 if(ASCIIValue>=65 && ASCIIValue<=90)
    		 {
    			 //Uppercase
    			 
    			 NewASCIIValue = 122 -ASCIIValue+65;
    			 
    		 }
    		 else if(ASCIIValue>=97 && ASCIIValue<=122)
    		 {
    			 //Lowercase
    			 
    			 NewASCIIValue = 122 -ASCIIValue +97;
    		 }
    		 
    		 else if(ASCIIValue>=48 && ASCIIValue<=57)
    		 {
    			 
    			 //Digit
    			 
    			 NewASCIIValue = 57 - ASCIIValue +48 ;
    		 }
    		 else
    		 {
    			 
    			 //special symbol.
    			 
    			 NewASCIIValue = ASCIIValue;
    			 
    		 }	
    		 
    		 ch=(char)NewASCIIValue;
    		 EncryptedText = EncryptedText + ch;
    		
    	}
    	return EncryptedText;
    	
    }
	
}
