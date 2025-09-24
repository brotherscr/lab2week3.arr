import file("lab2-support.arr") as support

#encryptor1
fun my-encryptor1(s :: String) -> String:
  doc: "returns input 5 times" 
  print(s + s + s + s + s)
end

#encryptor2
fun my-encryptor2(s :: String) -> String:
  doc: "returns first four letters of the string" 
  string-substring(s, 0, 4)
end

#encryptor3
fun my-encryptor3(s :: String) -> String:
  doc: "returns string with . replaced with !" 
  z = string-replace(s, ".", "!")
  print(z)
end

#encryptor4
fun my-encryptor4(s :: String) -> String:
  doc: "returns the input 5 times with only 4 characters of the string" 
  var E = string-substring(s, 0, 4)
  print(E + E + E + E + E)
end

#encryptor5
fun my-encryptor5(s :: String) -> String:
  doc: "returns string with vowels being the next letter of the alphebet"
  z = string-replace(s, "a", "b")
  x = string-replace(z, "e", "f")
  c = string-replace(x, "i", "j")
  v = string-replace(c, "o", "p")
  b = string-replace(v, "u", "v")
  a = string-replace(b, "A", "B")
  p = string-replace(a, "E", "F")
  d = string-replace(p, "I", "J")
  f = string-replace(d, "O", "P")
  g = string-replace(f, "U", "V")
  
  print(g)
end

#encryptor6
fun my-encryptor6(s :: String) -> String:
  doc: "returns the string without any letter R" 
  a = string-replace(s, "r", "")
  b = string-replace(a, "R", "")
  string-to-lower(b)
end

#encryptor7
fun my-encryptor7(s :: String) -> Number:
  doc: "returns the string length" 
  e = string-length(s)
  print(e)
end

#encryptor8
fun my-encryptor8(s :: String) -> String:
  doc: "returns the string three times with three ! and the end of each word" 
  print(s + "!!!" + s + "!!!" + s + "!!!")
end

#I assume number 9 has something to do with enum or something similar but have had no success converting the inputs. 

#encryptor10
fun my-encryptor10(s :: String) -> String:
  doc: "returns first four characters of string five times with the vowels swapped for the next letter of the alphabet and without any letter R"
  z = string-replace(s, "a", "b")
  x = string-replace(z, "e", "f")
  c = string-replace(x, "i", "j")
  v = string-replace(c, "o", "p")
  b = string-replace(v, "u", "v")
  a = string-replace(b, "A", "B")
  p = string-replace(a, "E", "F")
  d = string-replace(p, "I", "J")
  f = string-replace(d, "O", "P")
  g = string-replace(f, "U", "V")
  k = string-replace(g, "r", "")
  l = string-replace(k, "R", "")
  t = string-substring(l, 0, 4)
  string-to-lower(t + t + t + t + t)
end


support.test-encryptor1(my-encryptor1)
support.test-encryptor2(my-encryptor2)
support.test-encryptor3(my-encryptor3)
support.test-encryptor4(my-encryptor4)
support.test-encryptor5(my-encryptor5)
support.test-encryptor6(my-encryptor6)
support.test-encryptor7(my-encryptor7)
support.test-encryptor8(my-encryptor8)
support.test-encryptor10(my-encryptor10)

