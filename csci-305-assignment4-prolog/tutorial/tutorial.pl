# IMPERITIVE LANGUAGE: NO MATH

#type : [<name-of-file-without-ext>]. to load program (in prolog window).
# 'listing' allows user to see what prolog has recorded.
# ask prolog about some info by typing command(agr or args) 
# type halt to exit prolog.

# Operators #
# :-  means if
# ,   means and
# ;   means or

# formulate some queries #
# Was george the parent of Charles I? parent(charles1, george1)
# Who was charles I's parent? parent(charles1, Parent)
# who were the children of Charels I?  parent(Child, charles1)

# arity is the number of argumnets it takes
# % and /* to */ denotes comments 

# Prolog I/O #
# write(X) output is X
# nl is newline

# Arithmetic #
# basic : < , > , >= , <=, = ,etc
# EX: positive(N) :- N>0.
# non_zero(N) :- N<0 ; N>0.

