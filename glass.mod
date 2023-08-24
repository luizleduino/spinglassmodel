param n;
param J {1..n,1..n};
#var s {1..n} in {-1,1};
var s {1..n}<=1;

#maximize c: sum{i in 1..n-1, j in i+1..n} J[i,j]*s[i]*s[j];

maximize c: sum{i in 1..n-1, j in i+1..n} 0.5*J[i,j]*(1-s[i]*s[j]);


subject to inter {i in 1..n}: -1 <= s[i]; 