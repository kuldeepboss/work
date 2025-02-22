#include <iostream>

using namespace std;

class Counter {
private:
    int count;

public:
    // Constructor
    Counter() : count(0) {}

    // Overloading prefix ++ (e.g., ++obj)
    Counter& operator++() {
        ++count;
        return *this;
    }

    // Overloading postfix ++ (e.g., obj++)
    Counter operator++(int) {
        Counter temp = *this;
        count++;
        return temp;
    }

    // Overloading prefix -- (e.g., --obj)
    Counter& operator--() {
        --count;
        return *this;
    }

    // Overloading postfix -- (e.g., obj--)
    Counter operator--(int) {
        Counter temp = *this;
        count--;
        return temp;
    }

    // Method to print count
    void display() const {
        cout << "Count: " << count << endl;
    }
};

int main() {
    Counter c;

    cout << "Initial value: ";
    c.display();

    // Test prefix increment
    ++c;
    cout << "After prefix increment (++c): ";
    c.display();

    // Test postfix increment
    c++;
    cout << "After postfix increment (c++): ";
    c.display();

    // Test prefix decrement
    --c;
    cout << "After prefix decrement (--c): ";
    c.display();

    // Test postfix decrement
    c--;
    cout << "After postfix decrement (c--): ";
    c.display();

    return 0;
}
