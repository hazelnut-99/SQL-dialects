SELECT *
    FROM oncall UNPIVOT ((name, email, phone) FOR precedence IN ((name1, email1, phone1) AS primary,
                                                                 (name2, email2, phone2) AS secondary));
