# An Array is a generic type containing elements of a type T. 
# It is typically created with an array literal

[1, 2, 3]     # array(Int32)
[1, "hello", 'x']    # array (Int32 | string | char)


# when createing an empty array you must always specify T:

[] of In32   # same as Array(Int32).new
[]           # syntax error

# array of string
# arrary of string can be created with a special syntax
%w(one tow three)    # ["one", "tow", "three"]

# array of symbol
# arrays of symbols can be created with a special syntax
%i(one tow three)    # [:one, :tow, :three]

# array-like types
# you can use a special array literal syntax with other types too.
# as long they define an argless new method and a << method
MyType{1, 2, 3}

# if MyType is generic, the above id equivalent to this

tmp = MyType(typeof(1, 2, 3)).new
tmp << 1
tmp << 2
tmp << 3
tmp

# in the case of a generic type, the type arguments can be specifued tpp
MyType(Int32 | String){1, 2, "foo"}

