SELECT arraySort(multiMatchAllIndices(arrayJoin(['aaaa', 'aaaaaa', 'bbbb', 'aaaaaaaaaaaaaa']), ['.*aa.*aaa.*', 'aaaaaa{2}', '(aa){3}']));
