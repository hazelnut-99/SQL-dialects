select ans > 0.49 and ans < 0.51 from
(select stochasticLinearRegression(0.03, 0.00001, 2, 'Nesterov')(target, param1, param2)[1] as ans from defaults);
