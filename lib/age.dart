class AgeCalculater{
   static int age;
   AgeCalculater(int p ){
    print("Enter Your Birth Year:");
    int birthYear = p;
     age = DateTime.now().year - birthYear;
    print("Your Age is $age Years Old");
  }
}