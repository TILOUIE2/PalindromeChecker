public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindromes(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindromes(String word)
{
 String sNew = new String();
 word = noCapitals(word);
 word = noSpaces(word);
 word = onlyLetters(word);
 sNew = reverse(word);
 return word.equals(sNew);
}


//no capital
public String noCapitals(String str){
  return str.toLowerCase();
}

//no space
public String noSpaces(String str){
  String no = "";
  for(int i = 0; i < str.length(); i++){
    if(str.substring(i, i+1).equals(" ")){
      no = no + "";
    }
    else{
      no = no + str.substring(i, i+1);
    }
  }
  return no;
}

//only letters
public String onlyLetters(String str){
  String letters = "";
  for(int i = 0; i < str.length(); i++){
    if(Character.isLetter(str.charAt(i)) == true){
      letters = letters + str.substring(i, i + 1);
    }
  }
  return letters;
}

//reverse
public String reverse(String str)
{
  String sNew = new String();
  for(int i = 0; i < str.length(); i++){
    sNew = sNew + str.substring(str.length() - 1 - i, str.length() - i);
  }
  return sNew;
}
