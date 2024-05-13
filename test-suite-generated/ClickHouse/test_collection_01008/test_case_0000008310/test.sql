SELECT [] = multiMatchAllIndices(materialize('aaaa'), ['.*aa.*aaa.*', 'aaaaaa{2}', '\(aa\){3}']);
