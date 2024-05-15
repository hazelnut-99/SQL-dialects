SELECT round(abs(corr(x_value, y_value) - covarPop(x_value, y_value) / (stddevPop(x_value) * stddevPop(y_value))), 6) FROM series;
