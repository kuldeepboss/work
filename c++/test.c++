#include <iostream>
#include<string>
using namespace std;
void swapNums (int &x, int &y)
{
    int z=x;
    x=y;
    y=z;
}
int main(){
    int firstNum =8;
    int secondNum =10;
    
    cout << "before swap." << "\n";
    cout << firstNum << secondNum <<  "\n";
    
    swapNums (firstNum,secondNum);
    
    cout << "after swap : " << "\n";
    cout << firstNum << secondNum << "\n";
    return 0;
}
