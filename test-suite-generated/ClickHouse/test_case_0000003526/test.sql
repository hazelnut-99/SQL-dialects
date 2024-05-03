with (select state from model) as model select round(evalMLMethod(model, predict1, predict2, predict3, predict4, predict5, predict6, predict7), 12) from defaults;
