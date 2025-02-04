#include<bits/stdc++.h>
using namespace std;
void occurence(int arr[],int n)
{
    unordered_map<int,int> m;
    for(int i=0;i<n;i++)
    {
        m[arr[i]]++;
    }
    auto it =m.begin();
    cout<<"The Count Array\n";
    while(it!=m.end())
    {
        cout<<it->first<<" "<<it->second<<endl;
        it++;
    }
}
int main()
{
    int n=5;
    int a[n]={0,1,2,3,3,1}
    cout<<"The Original Array\n";
    for(int i=0;i<n;i++)
    {
        cout<<a[i]<<" ";
    }cout<<endl;
    occurence(a,n);
}