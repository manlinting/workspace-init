#include <boost/algorithm/string.hpp>
#include <string>
#include <iostream>
using namespace std;

int main()
{
    string s("AbCdefG1234 H123Lil");
    cout<<boost::algorithm::to_upper_copy(s) << endl;
    boost::algorithm::to_lower(s);
    cout<<s<<endl;
    return 0;
}

//gzrd_Lib_CPP_Version_ID--start
#ifndef GZRD_SVN_ATTR
#define GZRD_SVN_ATTR "0"
#endif
static char gzrd_Lib_CPP_Version_ID[] __attribute__((used))="$HeadURL$ $Id$ " GZRD_SVN_ATTR "__file__";
// gzrd_Lib_CPP_Version_ID--end

