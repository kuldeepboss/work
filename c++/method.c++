#include<iostream>
using namespace std;

class myclass
{
    public:
    int myclass::speed( int maxspeed){
        return maxspeed;
    }

};

int main ()
{
    myclass myobj;
    cout << myobj.speed(200);
    return 0;
}