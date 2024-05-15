select ans > -67.01 and ans < -66.9 from
(with (select state from model) as model select evalMLMethod(model, predict1, predict2) as ans from defaults limit 1);
