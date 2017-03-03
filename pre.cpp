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
	ifstream word("words.txt");
	while(word)
	{
		string s;
		word>>s;
		list.push_back(s);
	}
	ofstream x("xftest.txt");
	ofstream y("ytest.txt");
	ifstream data("testtry.txt");
	
	char line[50000];
	int i=0;
	while(data)
	{
		data.getline(line,50000,'\n');
		istringstream iss(line);
		cout<<(++i)<<endl;
		vector<int> v(list.size());
		for(int i=0;i<v.size();i++)
		{
			v[i]=0;
		}
		string label;
		iss>>label;
		if(label == "rec.autos")
		{
			y<<1<<endl;
		}
		else if(label == "rec.motorcycles")
		{
			y<<2<<endl;
		}
		else if (label == "rec.sport.baseball")
			y<<3<<endl;
		else if (label == "rec.sport.hockey")
			y<<4<<endl;
		string s;
		while(iss)
		{
			iss>>s;
			for(int i=0;i<list.size();i++)
			{
				if(list[i]==s)
				{
					v[i]++;
					break;
				}
			}
		}
		//cout<<v.size()<<endl;
		for(int i=0;i<v.size();i++)
		{
			//x<<i<<" ";
			x<<v[i]<<" ";
		}
		//cout<<endl;
		x<<"\n";
	}
}
