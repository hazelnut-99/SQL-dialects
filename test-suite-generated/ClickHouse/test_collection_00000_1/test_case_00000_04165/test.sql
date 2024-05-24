SELECT [] = multiMatchAllIndices(materialize('aaaa'), materialize(['.*aa.*aaa.*', 'aaaaaa{2}', '\(aa\){3}']));
