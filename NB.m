function [prob,prob_token] = NB(X,Y)

m = size(X,1);

n = size(X,2);

%% Find indices of the groups in order to calculate their propability
auto_ind = find(Y==1);
moto_ind = find(Y==2);
base_ind = find(Y==3);
hock_ind = find(Y==4);


%% Find probabilities of labels

prob_auto = size(auto_ind,1)/m;
prob_moto = size(moto_ind,1)/m;
prob_base = size(base_ind,1)/m;
prob_hock = size(hock_ind,1)/m;

prob =[prob_auto; prob_moto; prob_base; prob_hock];

email_length = sum(X,2);

%%Total word count in each class
auto_wc = sum(email_length(auto_ind));
moto_wc = sum(email_length(moto_ind));
base_wc = sum(email_length(base_ind));
hock_wc = sum(email_length(hock_ind));


%% Probability of each token ......


auto=(sum(X(auto_ind,:))+1)./(auto_wc+n);
moto=(sum(X(moto_ind,:))+1)./(moto_wc+n);
base=(sum(X(base_ind,:))+1)./(base_wc+n);
hock=(sum(X(hock_ind,:))+1)./(hock_wc+n);

prob_token = [auto;moto;base;hock];


end






