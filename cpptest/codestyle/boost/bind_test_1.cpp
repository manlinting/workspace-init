#include <map>
#include <boost/bind.hpp>
#include<iostream>
#include <algorithm>  

using namespace std;

void print_string(const string& s) {  
    std::cout << s <<endl;
}

int main()
{
    map<int, string> my_map;
    my_map[0]="Boost";my_map[1]="Bind";
    for_each(  
            my_map.begin(),  
            my_map.end(),  
            boost::bind(
                &print_string, boost::bind(&std::map<int,std::string>::value_type::second,_1)
            ));
    return 0;
}





//gzrd_Lib_CPP_Version_ID--start
#ifndef GZRD_SVN_ATTR
#define GZRD_SVN_ATTR "0"
#endif
static char gzrd_Lib_CPP_Version_ID[] __attribute__((used))="$HeadURL$ $Id$ " GZRD_SVN_ATTR "__file__";
// gzrd_Lib_CPP_Version_ID--end

