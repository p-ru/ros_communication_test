X_cmd_ts = test{1}.Values;
X_out_ts = test{2}.Values;

X_out_data = squeeze(X_out_ts.Data); 
X_cmd_data = X_cmd_ts.Data;
Ts = mean(diff(X_out_ts.Time));
data = iddata(X_out_data, X_cmd_data, Ts);