#include <map>
#include <stdio.h>

using namespace std;

int main()
{
    map<int,int> mapTest = 
    { 
        {1,2}, 
        {3,4}, 
    };

    printf("%d\n", mapTest[1]);
    printf("%d\n", mapTest[3]);
    return 0;
}
