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
 * Resources:
 * String class: https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_string.htm
 * Date class: https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_date.htm
 * Math class: https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_math.htm
 * Classes: https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_classes_understanding.htm
 *
 * @author Michelle Holman
 */

public with sharing class ClassesObjectsMethods {
    
    /**
     * Question 1
     * It initializes a String to "Hello, Salesforce!" and demonstrates usage of
     * the length, substring, and toLowerCase methods of the String class.
     * Example: practiceStringMethods() should return a list like ["17", "Hello", "hello, salesforce!"].
     * @return A list containing the length of the string, a substring of the string, and the string in lower case.
     */
    public static List<String> practiceStringMethods() {
        // Initialize a String with 'Hello, Salesforce!'
        String myString = 'Hello, Salesforce!';
        // New list to store final answer in
        List<String> finalAnswer = new List<String>();
        // Get the length of the String and add to finalAnswer String
        finalAnswer.add(String.valueOf(myString.length()));
        // Get a substring of the String of the first 5 characters and add to finalAnswer
        finalAnswer.add(myString.substring(0, 5));
        // Convert the String to lower case and add to finalAnswer
        finalAnswer.add(myString.toLowerCase());
        // Return the list with the string data
        return finalAnswer;

        // PASS
    }

    /**
     * Question 2
     * Check if the input string starts with 'Sales', ends with 'Force', and contains 'Awesome'.
     * Example: checkStringContent('Salesforce is Awesome!') should return a list like [true, false, true].
     * @param input The input string.
     * @return A list of boolean values indicating whether the string starts with 'Sales', ends with 'Force', or contains 'Awesome'.
     */
    public static List<Boolean> checkStringContent(String input) {
        // Initialize a list to store the results
        List<Boolean> results = new List<Boolean>();        
        // Check if the string starts with 'Sales'
        results.add(input.startsWith('Sales'));
        // Check if the string ends with 'Force'
        results.add(input.endsWith('Force'));
        // Check if the string contains 'Awesome'
        results.add(input.contains('Awesome'));
        return results; 
                // PASS
    }

    /**
     * Question 3
     * Take a sentence then remove any duplicate words, and return the sentence with only unique words.
     * Example: removeDuplicateWords('Hello Hello Salesforce Salesforce') should return 'Hello Salesforce'.
     * @param sentence The input sentence.
     * @return A string consisting of only unique words from the input sentence.
     */
    public static String removeDuplicateWords(String sentence) {
        // Split the sentence into words
        List<String> myWords = sentence.split(' ');
        // Create a set to store the unique words
        Set<String> wordsSet = new Set<String>();
        // Add each word to the set
        for (String word : myWords) {
            wordsSet.add(word);
        }
        // Join the unique words back into a sentence
        String mySentence = String.join(new List<String>(wordsSet), ' ');

        // Return the sentence with unique words
        return mySentence; 
    }   //PASS

    /**
     * Question 4
     * This method takes a string as a parameter, and calculates the number of vowels in the string.
     * For simplicity, we will consider only five vowels: 'a', 'e', 'i', 'o', 'u', and we will ignore case.
     * Example: countVowels("Hello World!") should return 3
     * @param s The string in which to count vowels.
     * @return The number of vowels in the string.
     */
    public static Integer countVowels(String str) {
        // Convert the string to lowercase for case insensitivity
        str = str.toLowerCase();
        // Initialize the count of vowels
        Integer count = 0;
        // Loop through each character in the string
        for (Integer i = 0; i < str.length(); i++) {
            // Get the current character
            String ch = str.substring(i, i + 1);
            // Check if the character is a vowel
            if (ch == 'a' || ch == 'e' || ch == 'i' || ch == 'o' || ch == 'u') {
                count++;
            }
        }
        return count; // PASS
    }   

    /**
     * Question 5
     * Given a list of scientist names, combine their names together with a comma if it contains the letter 'g'.
     * The final string should not end with a comma.
     * Example: findTheScientist() should return "Alan Turing,Grace Hopper,Guido van Rossum,Stephen Hawking"
     * @return A string containing the names of scientists that contain the letter 'g'.
     */
    public static String findTheScientist() {
        List<String> scientistNames = new List<String>{'Tim Berners-Lee', 'Alan Turing', 'Grace Hopper', 'Donald Knuth', 'Guido van Rossum', 'Ken Thompson', 'Stephen Hawking'};
        // The variable to store the concatenated string
        String namesAnswer = '';
        // Loop through the list of scientists' names
        for (String name : scientistNames) {
            // If the name doesn't contain the letter 'G', skip this iteration
            if (name.toLowerCase().contains('g')) {
            // Add the name to the result string, followed by a comma
                namesAnswer+= name + ',';
            }
        }
            // Remove the last comma from the result string
            if (namesAnswer.endsWith(',')) {
                namesAnswer = namesAnswer.removeEnd(',');
            }
        return namesAnswer; // PASS
    }


    /**
     * Question 6
     * This method calculates the absolute value of the difference between of two input numbers that are raised to the 2nd power.
     * Example: calculateDifferenceOfSquares(3, 4) should return 7.
     * @param a The first number.
     * @param b The second number.
     * @return The absolute value of the difference
     */
    public static Double calculateDifferenceOfSquares(Double a, Double b) {
        // Square the input numbers using the Math.pow() function
        Double sqA = (Integer)Math.pow(a, 2);
        Double sqB = (Integer)Math.pow(b, 2);
        // Calculate the absolute difference using Math.abs() function
        Double absDiff = Math.abs(sqA - sqB);
        // Return the result
        return absDiff; // PASS
    }

    /**
     * Question 7
     * Generate a random number between 50 and 100
     * Example: generateRandomNumber() should return a number like 75.
     * @return A integer between 50 and 100.
     */
    public static Integer generateRandomNumber() {
        // Use Math class to generate number between 50 and 100
        Integer randomNumber = (Integer)Math.floor(Math.random() * 51) + 50;
        // Return the random number
        return randomNumber; // PASS
    }


    /**
     * Question 8
     * Format the current date in the current user locale format.
     * Example: getCurrentDate() should return a string like "3/21/2001" for US locale users. Locale/String may differ depending on your location.
     * @return The current date in the current user locale format.
     */
    public static String getCurrentDate() {
    // Get the current date in GMT timezone
    Date currentDate = Date.today();
     // Get the day, month, and year components
    Integer day = currentDate.day();
    Integer month = currentDate.month();
    Integer year = currentDate.year();
    // Construct the formatted date string
    String formattedDate = month + '/' + day + '/' + year;
    // Return the formatted date string
    return formattedDate;
    }   //PASS

    /**
     * Question 9
     * Given a date time return the day of the week in number format
     * @param dt the current date and time
     * @return The number of the day of the week for the given date.
     */
    public static String getDayOfWeek(DateTime dt) {
    // Format the DateTime object to return the day of the week as a number (1-7)
    String dayOfWeekNumber = dt.format('u');
        // Return the day of the week number as a string
    return dayOfWeekNumber;
    }   //PASS


    /**
     * Question 10
     * Calculate the difference between the years of two dates
     * For example, if the first date is 2023-01-01 and the second date is 2025-12-31, the method should return 2
     * If either of the dates is null, return null.
     * @param d1 The first date.
     * @param d2 The second date.
     * @return The a positive number years between the two dates, or null if either date is null.
     */
    public static Integer calculateYearDifference(Date d1, Date d2) {
        // null stuff first
        if (d1 == null || d2 == null) {
            return null;
        }
        // Extract the year component from each date
        Integer year1 = d1.year();
        Integer year2 = d2.year();
            
        // Calculate the absolute difference between the years
        Integer yearDifference = Math.abs(year2 - year1);
        
        // Return the difference
        return yearDifference;  //PASS 
        }


    /**
     * Question 11
     * The Book class represents a book in a library. 
     * Each Book object has a title and an author, and methods to return these details.
     * This class can be used in the context of a library management system, bookstore, etc.
     * where you need to manipulate and manage book information.
     */
    public class Book {
    // Declare instance variables
    public String title;
    public String author;
    public Integer pages;
    
    // Constructor to initialize title, author, and pages
    public Book(String bookTitle, String bookAuthor) {
        this.title = bookTitle;
        this.author = bookAuthor;
    }

    // Getter methods to return book details
    public String getTitle() {
        return this.title;
    }

    public String getAuthor() {
        return this.author;
    }

    public Integer getPages() {
        return this.pages;
    }

    public String getBookDetails() {
    // Method to get book details
        return 'Title: ' + 
        this.title + ', Author: ' + 
        this.author;
    }
}           //PASS



    /**
     * Question 12
     * Create a Book object and returns the details of the book.
     * For example, createAndGetBookDetails() should return a string like "Title: A Brief History of Time, Author: Stephen Hawking".
     * @return A string containing the details of the book.
     */
    public static String createAndGetBookDetails() {
        // Create a Book object with title "A Brief History of Time" and author "Stephen Hawking"
        Book myBook = new Book('A Brief History of Time', 'Stephen Hawking');

        // Call the getBookDetails method on the book object to get the details of the book
        String bookDetails = myBook.getBookDetails();

        // Return the details of the book
        return bookDetails;     //PASS
    }

    /**
     * Question 13
     * Create and update two Book objects and returns the books.
     * For example, generateBookList(Book) should return a list like ["Title: Harry Potter and the Chamber of Secrets, Author: J.K. Rowling", "Title: A Brief History of Time, Author: Stephen Hawking"].
     * Update Book 1 values: title = "Harry Potter and the Chamber of Secrets", author = "J.K. Rowling", pages = 352
     * Book 2 values: title = "A Brief History of Time", author = "Stephen Hawking"
     * @param myBook1 The first book object.
     * @return return a list of books.
     */
    public static List<Book> generateBookList(Book myBook1) {
        // Create a list of books
        List<Book> bookList = new List<Book>();
        
        // Update the title and author of myBook1
        myBook1.title = 'Harry Potter and the Chamber of Secrets';
        myBook1.author = 'J.K. Rowling';
        
        // Update the pages for myBook1 to 352
        myBook1.pages = 352;
        
         // Add myBook1 to the list
        bookList.add(myBook1);
        
        // Create a new Book object with title "A Brief History of Time" and author "Stephen Hawking"
        Book myBook2 = new Book('A Brief History of Time', 'Stephen Hawking');
        
        // Update the pages for A Brief History of Time to 256
        myBook2.pages = 256;
        
        // Add myBook2 to the list
        bookList.add(myBook2);
        
        // Return the list of books
        return bookList;
    }       //PASS


    /**
     * Question 14
     * The Person class represents a person.
     * Each Person object has a name and an age, and methods to return these details.
     * This class can be used in the context of a school, college, etc.
     * where you need to manipulate and manage person information.
     */
    public class Person {
        // Declare instance variables
        private String name;
        private Integer age;
            
        // Constructor to initialize name and age
        public Person(String personName, Integer personAge) {
            this.name = personName;
            this.age = personAge;
        }
            
        // Method to introduce the person
        public String introduceYourself() {
            return 'Hello, my name is ' + 
                this.name + ' and I am ' + 
                this.age + ' years old.';
        }
            
        // Getter method to retrieve the name of the person
        public String getName() {
            return this.name;
        }
            
        // Getter method to retrieve the age of the person
        public Integer getAge() {
            return this.age;
        }
            
        // Setter method to set the name of the person
        public void setName(String newName) {
            this.name = newName;
        }
            
        // Setter method to set the age of the person
        public void setAge(Integer newAge) {
            this.age = newAge;
        }
    }       // PASS


    /**
     * Question 15
     * Create a Person object and returns the details of the person.
     * For example, personDetails() should return a list like ["Hello, my name is John Doe and I am 28 years old.", "John Doe", "28"].
     * @return A string containing the details of the person.
     */

    public static List<String> personDetails() {
        List<String> results = new List<String>();
            // Create a new instance of Person class
            Person johnDoe = new Person('John Doe', 28);
        
            // Add the introduction string using the introduceYourself method
            results.add(johnDoe.introduceYourself());
        
            // Get the name of the person using the getter method and add it to the list
            results.add(johnDoe.getName());
        
            // Get the age of the person using the getter method and add it to the list
            results.add(String.valueOf(johnDoe.getAge()));
        
            return results;
        }       //PASS


    /**
     * Question 16
     * Create a Person object with the provided name and age.
     * @param name The name of the person.
     * @param age The age of the person.
     * @return A new instance of the Person class.
     */
    public static Person createPerson(String name, Integer age) {
         // Create a new instance of the Person class using the provided name and age
        Person newPerson = new Person(name, age);
    
        // Return the new instance of the Person class
        return newPerson;

    }       // PASS

    /**
     * Question 17
     * Create a method that constructs multiple Person objects.
     * You are to create a new Person object for each name in the provided List<String> of names,
     * using the same age for all Person objects. The method should return a List<Person> of all the Person objects created. 
     * @param names A list of names.
     * @param age The age to be set for all the Person objects.
     * @return A list of new Person objects.
     */
    public static List<Person> createMultiplePersons(List<String> names, Integer age) {
    // Create a list to store the Person objects
    List<Person> personList = new List<Person>();

    // Loop through each name in the provided list of names
    for(String name : names) {
        // Create a new Person object with the specified name and age
        Person newPerson = new Person(name, age);
    
        // Add the new Person object to the list of Person objects
        personList.add(newPerson);
    }

    // Return the list of Person objects
    return personList;
    }   //PASS


    /**
     * Question 18
     * Compare two Person objects based on their ages.
     * If the first Person is older, the method should return the first Person. If the second Person is older, it should return the second Person.
     * If they are the same age, return either.
     *
     * @param person1 The first Person object.
     * @param person2 The second Person object.
     * @return The Person object of the older person.
     */
    public static Person getOlderPerson(Person person1, Person person2) {
        if (person1.getAge() > person2.getAge()) {
            return person1;
        } else if (person1.getAge() < person2.getAge()) {
            return person2;
        } else {
            // If they are the same age, return either person
            return person1; // or return person2;
            }
        }       //PASS
}       