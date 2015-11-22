#include <boost/timer.hpp>
#include <iostream>
using namespace boost;
using namespace std;

int main()
{
    timer t;
    cout << "max timespan:" << t.elapsed_max()/3600 <<"h"<< endl;
    cout << "min timespan:" << t.elapsed_min() << "s" << endl;


    cout << "now time elapsed:" << t.elapsed() << "s" << endl;
}

//gzrd_Lib_CPP_Version_ID--start
#ifndef GZRD_SVN_ATTR
#define GZRD_SVN_ATTR "0"
#endif
static char gzrd_Lib_CPP_Version_ID[] __attribute__((used))="$HeadURL$ $Id$ " GZRD_SVN_ATTR "__file__";
// gzrd_Lib_CPP_Version_ID--end

