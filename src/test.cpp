#include "test.h"
#include <iostream>
#include <vector>

using namespace std;

test::test(string s)
  :foo(s)
{
  int vals[] = { 1, 2, 3, 4};
  const std::vector<int> cv(vals, vals+3);
  for (auto i: cv)
    cout << i << endl;
}

void test::printFoo()
{
  cout<<foo<<endl;
}
