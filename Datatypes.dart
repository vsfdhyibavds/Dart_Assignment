//Dart Datatypes
//1:Numbers(int,double)
void main(){
    //Variables declaration
    int num1= 460;//without decimal point.
    double num2= 250.6//with decimal point.
    num num3= 70;
    num num4= 30.5;

    // For sum
    num sum= num1 + num2 + num3 + num4;

    print("Num1 is $num1");
    print("Num2 is $num2");
    print("Num3 is $num3");
    print("Num4 is $num4");
    }

    //2:String
    void main(){
        //Declaring values
        string myname= "Eugene Wekesa";
        string address= "Nairobi";
        // Printing Values
        print("My name is $name and the address is $address");

    }

//3:List
void main(){
    List<String> names= ["Grace","Gloria","Gertrude"];
    print("Value of names is $names");
    print("Value of names[0] is ${names[0]}"); //index 0
    print("Value of names[1] is ${names[1]}"); //index 1
    print("Value of names[2] is ${names[2]}"); //index 2

    print (names);


//4:Maps
void main(){
    Map<String, int> ages = {'Frank': 25,
    'Victor': 35,
    'Brian' : 30,
    };
    print("Ages of students: $ages");
}

