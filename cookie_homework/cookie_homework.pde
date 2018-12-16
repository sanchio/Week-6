// Code_1_FA18
// Week 7
// Bryan Ma

// this is the "Cookie" class sketch we wrote in class.

// create 2 or more additional class definitions. 
// these classes aren't used for actually programming any visuals so they can 
//  be totally abstract and print text only just as the Cookie class does. 

// The first new class you make should represent some other kind of common object.
// give it fields and methods, as well as a custom constructor.
// The second new class you create should have its own object instance of the Cookie 
//  (or other) class. For example, maybe a Cookie Jar class would have an 
//  ArrayList of type Cookie. 

void setup() {
  
CookieJar[] arrayOfCookies = new CookieJar[5];
for (int i = 0; i < arrayOfCookies.length; i++) {
  arrayOfCookies[i] = new CookieJar();
}

ArrayList<CookieJar> objectArrayList = new ArrayList<CookieJar>();
objectArrayList.add(new ClassName());

Cookie cookie = new Cookie("Snickerdoodle", "extra large");
println("what kind of cookie?"); 
println(cookie.kind);
cookie.cookieInfo();


Milk Milk = new Milk("Almond");
Milk.milkInfo();
println("what is that milk made of?");
println(Milk.flavour);
}

void draw() {
for (int i = 0; i < objectArrayList.size(); i++) {
  CookieJar obj = objectArrayList.get(i);
  obj.cookieJarInfo();
}
  
}




class Cookie {
  String kind;
  String size;
  
  Cookie(String whatKind, String whatSize) {
    println("baked new " + whatSize + " " + whatKind + " cookie!");
    kind = whatKind;
    size = whatSize;
    
  }
   String getSize() {
    return size;
  }
 
   void cookieInfo() {
    println("This cookie is a " + size + " " + kind + " cookie!");
  }
}

class Milk {
  String flavour;
  
  Milk(String whatFlavour) {
    println("Drinking some " + whatFlavour + " " + "milk!");
    flavour = whatFlavour;
  }
     
  void milkInfo() {
    println("That milk is " + flavour + " " + "milk!");
    
  } 
  
}

class CookieJar {
  String cookiejar;
  
  CookieJar(String whatcookiejar) {
    println ("This" + whatcookiejar + " " + "has no cookies!");
    cookiejar = whatcookiejar;
  }
  
  void cookieJarInfo() {
    println("That cookie jar is" + cookiejar);
  
 
 

  }
}
