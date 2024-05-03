select ans > -2.01 and ans < -1.99 from
(select stochasticLinearRegression(0.03, 0.00001, 2, 'Nesterov')(target, param1, param2)[2] as ans from defaults);
