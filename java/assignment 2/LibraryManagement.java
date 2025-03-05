import java.util.ArrayList;

// Book class to represent a book
class Book {
    private String title;
    private String author;
    public Book(String title, String author) {
        this.title = title;
        this.author = author;
    }
    public String getTitle() {
        return title;
    }
    @Override
    public String toString() {
        return "Book: " + title + " by " + author;
    }
}
class Library {
    private ArrayList<Book> books;
    public Library() {
        books = new ArrayList<>();
    }
    public void addBook(Book book) {
        books.add(book);
        System.out.println(book.getTitle() + " added to the library.");
    }
    public void removeBook(String title) {
        for (Book book : books) {
            if (book.getTitle().equalsIgnoreCase(title)) {
                books.remove(book);
                System.out.println(title + " removed from the library.");
                return;
            }
        }
        System.out.println("Book not found in the library.");
    }
    public void displayBooks() {
        if (books.isEmpty()) {
            System.out.println("The library is empty.");
        } else {
            System.out.println("Books in the library:");
            for (Book book : books) {
                System.out.println(book);
            }
        }
    }
}
public class LibraryManagement {
    public static void main(String[] args) {
        Library library = new Library();
        Book book1 = new Book("free fire india", "v.k kuldeepking");
        Book book2 = new Book("ajathind", "bhagatsingh");
        library.addBook(book1);
        library.addBook(book2);
        library.displayBooks();
        library.removeBook("1984");
        library.displayBooks();
    }
}