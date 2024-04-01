/**
 * The ClassesObjectsMethods class serves as an exploration into Object Oriented Programming in Apex.
 * It covers fundamental aspects such as class instantiation, method creation, encapsulation, and object interaction.
 *
 * This class introduces developers to the concept of creating and manipulating objects in Apex. It discusses
 * how to define classes, create methods, and use objects. This class uses two example classes - Person and Book.
 * 
 * Topics covered in this class include:
 * - Understanding how to define a class in Apex.
 * - Understanding how to create methods in Apex.
 * - Understanding how to instantiate objects of a class.
 * - Understanding encapsulation and the importance of getter and setter methods.
 *
 * Users of this class can expect to gain a strong understanding of Object Oriented Programming in Apex and
 * be prepared for more advanced topics in Salesforce development.
 * 
 * The Person class is a simple representation of a person with properties like name and age, and a method
 * that allows the person to introduce themselves.
 * 
 * The Book class is a simple representation of a book with properties like title and author, and methods
 * to read and close the book.
 * 
 * @author Rafia Wakaar
 * @version 1.0
 */

public with sharing class ClassesObjectsMethods {
    /**
     * This method demonstrates usage of Apex String class methods.
     * It initializes a String to "Hello, Salesforce!" and demonstrates usage of
     * the length, substring, and toLowerCase methods of the String class.
     * Example: practiceStringMethods() should return a list like ["17", "Hello", "hello, salesforce!"].
     * @return A list containing the length of the string, a substring of the string, and the string in lower case.
     */
    public static List<String> practiceStringMethods() {
        // Initialize a String with 'Hello, Salesforce!'
        String helloSales = 'Hello, Salesforce!';
        // Get the length of the String  
        helloSales.length();      
        // Get a substring of the String of the first 5 characters
        String sub = helloSales.substring(0,5);
        // Convert the String to lower case
        String lower = helloSales.toLowerCase();
        // Return the list with the string data
        List<String> helloSalesList = new List<String>();
        // In the first position add the string length
        helloSalesList.add(String.valueOf(helloSales.length()));
        // In the second position add the substring
        helloSalesList.add(sub);
        // In the third position add the string in lower case
        helloSalesList.add(lower);
        return helloSalesList; // Replace null with the variable you used to store the result
    }

    /**
     * This method checks if the input string starts with 'Sales', ends with 'Force', or contains 'Awesome'.
     * Example: checkStringContent('Salesforce is Awesome!') should return a list like [true, false, true].
     * @param input The input string.
     * @return A list of boolean values indicating whether the string starts with 'Sales', ends with 'Force', or contains 'Awesome'.
     */
    public static List<Boolean> checkStringContent(String input) {
        // Initialize a list to store the results
        List<Boolean> check = new List<Boolean>();
        // Check if the string starts with 'Sales'
        check.add(input.startsWith('Sales'));
        // Check if the string ends with 'Force'
        check.add(input.endsWith('Force'));
        // Check if the string contains 'Awesome'
        check.add(input.contains('Awesome'));
        return check; // Replace null with the variable you used to store the result
    }

    /**
     * This method takes a sentence as input, removes any duplicate words, and returns the sentence with only unique words.
     * Example: removeDuplicateWords('Hello, Hello, Salesforce!') should return 'Hello, Salesforce!'.
     * @param sentence The input sentence.
     * @return A string consisting of only unique words from the input sentence.
     */
    public static String removeDuplicateWords(String sentence) {
        // Split the sentence into words
        List<String> words = sentence.split('[\\W]+');
        // Create a set to store the unique words
        Set<String> uniqueWords = new Set<String>();
        // Add each word to the set
        for(String word : words){
            uniqueWords.add(word);
        }
        // Join the unique words back into a sentence
        String uniqueSentence = String.join(new List<String>(uniqueWords), ' ');
        // Return the sentence with unique words
        return uniqueSentence; // Replace null with the variable you used to store the result
    }

    /**
     * This method takes a string as a parameter, and calculates the number of vowels in the string.
     * For simplicity, we will consider only five vowels: 'a', 'e', 'i', 'o', 'u', and we will ignore case.
     * Example: countVowels("Hello World!") should return 3
     * @param s The string in which to count vowels.
     * @return The number of vowels in the string.
     */
    public static Integer countVowels(String str) {
        // Initialize the result Integer
        Integer result = 0;
        
        for (Integer i = 0; i < str.length(); i++) {
            // get individual characters from the string - hint use substring or split
            String character = str.substring(i, i + 1);
            // check if the character is a vowel
            if(character == 'a' || character == 'e' || character == 'i' || character == 'o' || character == 'u' )
            // if it is a vowel, increment the result Integer
            result++;
        }
        

        return result; // Replace null with the variable you used to store the result
    }

    /**
     * Loops over the list of scientists and concatenates their names together with a comma if it contains the letter 'g'.
     * The final string should not end with a comma.
     * Example: findTheScientist() should return "Alan Turing,Grace Hopper,Guido van Rossum,Stephen Hawking"
     * @return The concatenated string of scientists' names that contain the letter 'g'.
     */
    public static String findTheScientist() {
        // The list of scientists' names
        List<String> scientistNames = new List<String>{'Tim Berners-Lee', 'Alan Turing', 'Grace Hopper', 'Donald Knuth', 'Guido van Rossum', 'Ken Thompson', 'Stephen Hawking'};

        // The variable to store the concatenated string
        String concatString = '';
        // Loop through the list of scientists' names
        for(String names : scientistNames){
            // If the name doesn't contain the letter 'G', skip this iteration
            if(!names.toLowercase().contains('g')){
                continue;
            }
            // Add the name to the result string, followed by a comma
            concatString += names + ',';
        }
        // Remove the last comma from the result string
        if(concatString.length() > 0){
        concatString = concatString.substring(0, concatString.length() - 1);
        }

        return concatString; // Replace null with the variable you used to store the result
    }

    /**
     * This method takes a number as input and calculates its square root.
     * Example: calculateSquareRoot(4) should return 2.
     * @param num The input number.
     * @return The square root of the input number.
     */
    public static Double calculateSquareRoot(Double num) {
        // Return the square root
        Double result = Math.sqrt(num);
        return result; // Replace null with the variable you used to store the result
    }

    /**
     * This method calculates the absolute value of the difference between of two input numbers that are raised to the 2nd power.
     * Example: calculateDifferenceOfSquares(3, 4) should return 7.
     * @param a The first number.
     * @param b The second number.
     * @return The absolute value of the difference
     */
    public static Double calculateDifferenceOfSquares(Double a, Double b) {
        // Square the input numbers using the Math.pow() function
        Double squaredNumbera = Math.pow(a, 2);
        Double squaredNumberb = Math.pow(b, 2);
        // Calculate the absolute difference using Math.abs() function
        Double result = Math.abs(squaredNumbera - squaredNumberb);
        // Return the result
        return result; // Replace null with the variable you used to store the result
    }

    /**
     * This method generates a random integer between 50 and 100 using the Math.random() function.
     * Example: generateRandomNumber() should return a number like 75.
     * @return A random integer between 50 and 100.
     */
    public static Integer generateRandomNumber() {
        // Generate a random number between 0 and 1 using Math.random(), multiply by 50 to get a number between 0 and 50, then add 50 to shift the range to 50-100.
        Integer result = (Integer) ((Math.random() * 50) + 50);
        // Return the random integer
        return result; // Replace null with the variable you used to store the result
    }

    /**
     * This method returns the current date formatted
     * Example: getCurrentDate() should return a string like "3/21/2001" for US locale users. Locale/String may differ depending on your location.
     * @return The current date in the current user locale format.
     */
    public static String getCurrentDate() {
        // Get the current date
        Date currentDate = Date.today();
        // Format the current date
       String result = (String) (currentDate.format());
        // Return the result
        return result; // Replace null with the variable you used to store the result
    }

    /**
     * This method returns the day of the week for a given date.
     * @param dt the current date and time
     * @return The number of the day of the week for the given date.
     */
    public static String getDayOfWeek(DateTime dt) {
        // Define a map of day of the week as a key and day number as the value
        // Monday = 1, Tuesday = 2, etc.
        Map<String,Integer> week = new Map<String,Integer>{
            'Monday' => 1,
            'Tuesday' => 2,
            'Wednesday' => 3,
            'Thursday' => 4,
            'Friday' => 5,
            'Saturday' => 6,
            'Sunday' => 7
        };

        // Get the day name using .format('EEEE');
            String dayName = dt.format('EEEE');
        // Get the day number from the map using the day name
            Integer dayNumber = week.get(dayName);
            String dayNumberString = String.valueOf(dayNumber);
        // Return the result as a string
        return dayNumberString; // Replace null with the variable you used to store the result
    }


    /**
     * This method calculates the difference between two dates in years, rounded down.
     * For example, if the first date is 2023-01-01 and the second date is 2025-12-31, the method should return 2, not 3.
     * If either of the dates is null, return null.
     * @param d1 The first date.
     * @param d2 The second date.
     * @return The number of full years between the two dates, or null if either date is null.
     */
    public static Integer calculateYearDifference(Date d1, Date d2) {
        If(d1 == null || d2 == null){
            return null;
        }
        // Calculate the difference in years
        Integer year1 = d1.year();
        Integer year2 = d2.year();
        Integer yearDifference = Math.abs(year1 - year2);
        return yearDifference; // Replace null with the variable you used to store the result
    }

    /**
     * Create method named calculateAbsoluteValue that takes an Integer as input and returns an Integer.
     * This method calculates the absolute value of a given number.
     * For example, absoluteValue(-5) should return 5, and absoluteValue(3) should return 3.
     * If the input is null, return null.
     * @param num The number for which the absolute value is to be calculated.
     * @return The absolute value of the input number, or null if the input is null.
     */
    public static Integer calculateAbsoluteValue(Integer num) {
        if(num == null){
            return null;
        }
        Integer abs = Math.abs(num);
        return abs; // Replace null with the variable you used to store the result
    }

    /**
     * The Book class represents a book in a library. 
     * Each Book object has a title and an author, and methods to return these details.
     * This class can be used in the context of a library management system, bookstore, etc.
     * where you need to manipulate and manage book information.
     */
    public class Book {
        // Declare three public instance variables - title, author, pages
        // title
        public String title;
        // author
        public String author;
        // pages
        public Integer pages;
    
        // Book constructor to initialize the title and author
        public Book(String title, String author) {
            // Initialize the title and author
            this.title = title;
            this.author = author;
        }

    
        // Method that returns the details of the book
        public String getBookDetails() {
            // return A string containing the details of the book in the format "Title: <title>, Author: <author>"
            String details = 'Title: ' + title + ', Author: ' + author;
            return details; // Replace null with the variable you used to store the result
        }
    }
    

    /**
     * This method creates a Book object and returns the details of the book.
     * For example, createAndGetBookDetails() should return a string like "Title: A Brief History of Time, Author: Stephen Hawking".
     * @return A string containing the details of the book.
     */
    public static String createAndGetBookDetails() {
        // Create a Book object with title "A Brief History of Time" and author "Stephen Hawking"
        Book firstBook = new Book('A Brief History of Time', 'Stephen Hawking');
        // Call the getBookDetails method on the book object to get the details of the book
        String detailsFirst = firstBook.getBookDetails();
        // Return the details of the book
        return detailsFirst; // Replace null with the variable you used to store the result
    }

    /**
     * This method create/updates two Book objects and returns the details of both books.
     * For example, generateBookList(Book) should return a list like ["Title: Harry Potter and the Chamber of Secrets, Author: J.K. Rowling", "Title: A Brief History of Time, Author: Stephen Hawking"].
     * Update Book 1 values: title = "Harry Potter and the Chamber of Secrets", author = "J.K. Rowling", pages = 352
     * Book 2 values: title = "A Brief History of Time", author = "Stephen Hawking"
     * @param myBook1 The first book object.
     * @return A string containing the details of the book.
     */
    public static List<Book> generateBookList(Book myBook1) {
        // Create a list of books
        List<Book> listOfBooks = new List<Book>();
        // Update the title and author of myBook1
        myBook1.title = 'Harry Potter and the Chamber of Secrets';
        myBook1.author = 'J.K. Rowling';
        // Update the pages for myBook1 to 352
        myBook1.pages = 352;
        // Create a new Book object with title "A Brief History of Time" and author "Stephen Hawking"
        Book myBook2 = new Book('A Brief History of Time', 'Stephen Hawking');
        // Update the pages for A Breif History of Time to 256
        myBook2.pages = 256;
        // Add the book to the list
        listOfBooks.add(myBook1); 
        listOfBooks.add(myBook2);
        return listOfBooks; // Replace null with the variable you used to store the result      
    }


    /**
     * The Person class represents a person.
     * Each Person object has a name and an age, and methods to return these details.
     * This class can be used in the context of a school, college, etc.
     * where you need to manipulate and manage person information.
     */
    public class Person {
        // Declare private two instance variables - (TEXT) name and (Number) age
        private String name;
        private Integer age;
        // Constructor to initialize the name and age
        public Person(String name, Integer age){
            this.name = name;
            this.age = age;
        }
        // Method introduceYourself that returns the details of the person        
        // Return a string in the format "Hello, my name is <name> and I am <age> years old."
        // For example, introduceYourself() should return a string like "Hello, my name is John Doe and I am 28 years old."
        public String introduceYourself(){
            String intro = 'Hello, my name is ' + name + ' and I am ' + age + ' years old.';
            return intro;
        }

        // Getter method that returns the name of the person
        public String getName(){
            return name;
        }
        // Getter method that returns the age of the person
        public Integer getAge(){
            return age;
        }
        // Setter method that sets the name of the person
        //void because its not returning anything - also don't need to add data type
        public void setName(String name){
           this.name = name;
        }
        // Setter method that sets the age of the person
        public void setAge(Integer age){
            this.age = age;
         }
    }

    /**
     * This method creates a Person object and returns the details of the person.
     * For example, personDetails() should return a list like ["Hello, my name is John Doe and I am 28 years old.", "John Doe", "28"].
     * @return A string containing the details of the person.
     */

    public static List<String> personDetails() {
        List<String> results = new List<String>();
        // Create a new instance of Person class
        // Name the person 'John Doe' and set the age to 28
        Person person1 = new Person('John Doe', 28);
        // Add the details of the person using the introduceYourself method
        String detailsOfPerson = person1.introduceYourself();
        results.add(detailsOfPerson);
        // Get the name of the person using the getter method and add it to the list
        String nameOfPerson = person1.getName();
        results.add(nameOfPerson);
        // Get the age of the person using the getter method and add it to the list
        Integer ageOfPerson = person1.getAge();
        String ageString = String.valueOf(ageOfPerson);
        results.add(ageString);
        return results; // Replace null with the variable you used to store the result
    }

    /**
     * In this practice problem, you will create a method that takes two parameters, 
     * a name and an age, and returns a new instance of the Person class.
     * 
     * @param name The name of the person.
     * @param age The age of the person.
     * @return A new instance of the Person class.
     */
    public static Person createPerson(String name, Integer age) {
        // Create a new instance of the Person class using the provided name and age
        Person person2 = new Person(name, age);
        // Return the new instance of the Person class
        return person2; // Replace null with the variable you used to store the result
    }

    /**
     * This practice problem asks you to create a method that constructs multiple Person objects.
     * You are to create a new Person object for each name in the provided List<String> of names,
     * using the same age for all Person objects. The method should return a List<Person> of all the Person objects created. 
     * @param names A list of names.
     * @param age The age to be set for all the Person objects.
     * @return A list of new Person objects.
     */
    public static List<Person> createMultiplePersons(List<String> names, Integer age) {
        List<Person> personList = new List<Person>();
        // Loop through each name in the provided list of names
        for(String name : names){
            // Create a new Person object for each name
            Person newPerson = new Person(name, age);
            // Add the new Person object to the list of Person objects
            personList.add(newPerson);
        }
        
        // Return the list of Person objects
        return personList; // Replace null with the variable you used to store the result
    }


    /**
     * This practice problem asks you to create a method that compares two Person objects based on their ages.
     * If the first Person is older, the method should return the first Person. If the second Person is older, it should return the second Person.
     * If they are the same age, return either.
     *
     * @param person1 The first Person object.
     * @param person2 The second Person object.
     * @return The Person object of the older person.
     */
    public static Person getOlderPerson(Person person1, Person person2) {
        if(person1.age > person2.age){
            return person1;
        } else if(person2.age > person1.age){
            return person2;
        } else{
        return person1; // Replace null with the variable you used to store the result
        }
    }
}