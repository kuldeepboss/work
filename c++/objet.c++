#include<iostream>
#include<string.h>
using namespace std;

class game 
{
    public:
    string brand;
    string model;
    int year;
    game(string x, string y , int z);
};
    game::game(string x,string y,int z)
    {
        brand =x;
        model =y;
        year  =z;
    }
    int main() 
    {
        game gameobj1("BGMI","Z20",2017);
        game gameobj2("FREE FIRE","Y12",2018);
        
        cout << gameobj1.brand << " " << gameobj1.model << " " << gameobj1.year <<"\n";
        cout << gameobj2.brand << " " << gameobj2.model << " " << gameobj2.year <<"\n";
        return 0;
    }