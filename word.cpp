#include<iostream>
#include<fstream>
#include<vector>
#include<string>
#include<sstream>
#include<string.h>
using namespace std;
int main()
{
	vector<string> list;
	ofstream word("words.txt");
	ifstream data("datanew.txt");
	
	char line[50000];
	int i=0;
	while(data)
	{
		data.getline(line,50000,'\n');
		cout<<(++i)<<endl;
		istringstream iss(line);
		string label;
		iss>>label;
		string s;
		while(iss)
		{
			iss>>s;
			//cout<<s<<endl;
			bool flag=false;
			for(int i=0;i<list.size();i++)
			{
			
				if(s==list[i])
				{
					flag=true;
					break;
				}
			}
			if(!flag)
			{
				list.push_back(s);
			}
		}
	}
	for(int i=0;i<list.size();i++)
	{
		//cout<<list[i]<<endl;
		word<<list[i]<<endl;
	}
}
