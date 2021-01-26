public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(strip(lines[i]))==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String reversed = reverse(word);
  for(int i = 0; i < word.length();i++){
    if(word.charAt(i) != reversed.charAt(i)){
      return false;
    }
  }
  return true;
}
public String reverse(String str)
{
    String sNew = new String();
    for(int i = str.length()-1; i >=0;i--){
      sNew+= str.charAt(i);
    }
    return sNew;
}

public String strip(String str){
  String lowercase = str.toLowerCase();
  String stripped = new String();
  for(int i = 0; i < lowercase.length();i++){
    if(Character.isLetter(lowercase.charAt(i))){
      stripped+=lowercase.charAt(i);
    }
  }
  return stripped;
}
