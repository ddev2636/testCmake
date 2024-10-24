#include <iostream>
#include "Book.h"    // Include the header for the Book class
#include "Library.h" // Include the header for the Library class

int main()
{
    // Create an instance of the Library
    Library myLibrary;

    // Create a Book object
    Book myBook("1", "The Great Gatsby", "F. Scott Fitzgerald");

    // Add the book to the library
    myLibrary.addBook(myBook);

    // Output a success message
    std::cout << "Book added to the library: " << myBook.getTitle() << " by " << myBook.getAuthor() << std::endl;

    return 0;
}