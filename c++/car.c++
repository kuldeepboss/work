#include<iostream>
#include<string>
using namespace std;
int main()
{
    struct 
    {
        string brand;
        string modal;
        int year;
    }
    mycar1,mycar2;

    mycar1.brand = "volvo";
    mycar1.modal = "Z4";
    mycar1.year  = 2000;

    mycar2.brand = "BMW";
    mycar2.modal = "F5";
    mycar2.year  = 2002;

    cout << mycar1.brand << " " << mycar1.modal << "  " << mycar1.year << "\n";

    cout << mycar2.brand << " " << mycar2.modal << "  " << mycar2.year << "\n";
    return 0;
}



