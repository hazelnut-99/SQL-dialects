CREATE OPERATOR ## (
   leftarg = path,
   rightarg = path,
   function = path_inter,
   commutator = ##
);
CREATE OPERATOR @#@ (
   rightarg = int8,		-- prefix
   procedure = factorial
);
CREATE OPERATOR #%# (
   leftarg = int8,		-- fail, postfix is no longer supported
   procedure = factorial
);
