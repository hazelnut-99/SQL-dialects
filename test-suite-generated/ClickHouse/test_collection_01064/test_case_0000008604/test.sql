select ans > 2.99 and ans < 3.01 from
(select stochasticLinearRegression(0.03, 0.00001, 2, 'Nesterov')(target, param1, param2)[3] as ans from defaults);
