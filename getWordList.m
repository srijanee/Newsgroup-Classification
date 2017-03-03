function wordlist = getWordList()

n = 16111;

wordlist = cell(n,1);

text = fopen('words.txt');

for i = 1:n
	str = fscanf(text,'%s',1);
	wordlist{i} = str;
end

end