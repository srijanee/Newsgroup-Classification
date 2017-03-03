fprintf('Classifying using NB.......\n');

wordList = getWordList();

X = importdata('xf.txt',' ');

Y = importdata('y.txt',' ');

m = size(X,1);

fprintf('Training Data Set\n');

[prob , prob_token] = NB(X,Y);

fprintf('Predicting Data Set\n');

ans = predict(X,prob,prob_token);

fprintf('Accuracy in Training Set\n');

(sum(ans==Y)/m)*100

Xtest = importdata('xftest.txt',' ');

Ytest = importdata('ytest.txt',' ');

mtest = size(Xtest,1);

anstest = predict(Xtest,prob,prob_token);

fprintf('Accuracy in Test Set\n');

(sum(anstest==Ytest)/mtest)*100

sum(anstest==Ytest)

