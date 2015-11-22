#include <boost/function.hpp>  
#include <boost/bind.hpp>  
#include <iostream>  

using namespace std;  

class TestA  
{  
    public:  
        void method()  
        {  
            cout<<"TestA: method: no arguments"<<endl;  
        }  

        void method(int a, int b)  
        {  
            cout<<"TestA: method: with arguments"  
                <<"value of a is:"<<a   
                <<"value of b is "<<b <<endl;  
        }  
};  


void sum(int a, int b)  
{  
    int sum = a + b;  
    cout<<"sum: "<<sum<<endl;  
}   

int main()  
{  
    boost::function<void()> f;  
    TestA test;  

    f = boost::bind(&TestA::method, &test);  
    f();  

    f = boost::bind(&TestA::method, &test, 1, 2);  
    f();  

    f = boost::bind(&sum, 1, 2);  
    f();  
}   

//gzrd_Lib_CPP_Version_ID--start
#ifndef GZRD_SVN_ATTR
#define GZRD_SVN_ATTR "0"
#endif
static char gzrd_Lib_CPP_Version_ID[] __attribute__((used))="$HeadURL$ $Id$ " GZRD_SVN_ATTR "__file__";
// gzrd_Lib_CPP_Version_ID--end

