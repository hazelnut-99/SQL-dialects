select ans < -61.374 and ans > -61.375 from
(with (select state from remote('127.0.0.1', currentDatabase(), model)) as model select evalMLMethod(model, predict1, predict2) as ans from remote('127.0.0.1', currentDatabase(), defaults));
