function [result] = predict(X,prob,prob_tokens)

m = size(X,1);
n = size(X,2);

log_autos = X*(log(prob_tokens(1,:)))' + log(prob(1,:));
log_motorcycles = X*(log(prob_tokens(2,:)))'+ log(prob(2,:));
log_baseball = X*(log(prob_tokens(3,:)))'+ log(prob(3,:));
log_hockey = X*(log(prob_tokens(4,:)))'+ log(prob(4,:));

Ylog = [log_autos log_motorcycles log_baseball log_hockey];


[dummy,result] = max(Ylog,[],2);


end