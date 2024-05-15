SELECT round(abs(corrStable(x_value, y_value) - covarPopStable(x_value, y_value) / (stddevPopStable(x_value) * stddevPopStable(y_value))), 6) FROM series;
