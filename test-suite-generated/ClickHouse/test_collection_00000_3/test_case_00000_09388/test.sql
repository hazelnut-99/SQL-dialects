SELECT anyIf(toNullable('Hello'), arrayJoin([1, NULL]) = 0);
