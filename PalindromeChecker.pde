void setup()
{
  String lines[] = loadStrings("palindrome.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}


String stripNonAlpha(String word)
{
  String removeChar = "";
  for (int i=0; i<word.length(); i++)
  {
    if(word.charAt(i) != ' ' && word.charAt(i) != '?' && word.charAt(i) != ',' && word.charAt(i) != '\'' && word.charAt(i) != ';' && word.charAt(i) != '.')
    {
      removeChar = removeChar + word.charAt(i);
    }
  }
  return removeChar;
}

boolean palindrome(String word)
{
  word = stripNonAlpha(word);
  word = word.toLowerCase();
  int charF = 0; //First Character
  int charL = (word.length() - 1); //Last character
  for (int i=0; i < word.length(); i++)
  {
    if (word.charAt(charF) != word.charAt(charL))
    {
      return false;
    }
    else
    {
      charF++;
      charL--;
    }
  }
  return true;
}
