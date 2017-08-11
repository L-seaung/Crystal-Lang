# A String represents an immutable sequence of UTF-8 characters.

# A String is typically created with a string literal,
# enclosing UTF-8 characters in double quotes:

"\""     # double quote
"\\"     # backslash
"\e"     # escape
"\f"     # form feed
"\n"     # newline
"\r"     # carriage return
"\t"     # tab


# You can use a backslash followed by at 
# most three digits to denote a code point written in octal:

"\101"    # == "A"
"\123"    # == "S"
"\12"     # == "\n"
"\1"      # string with one character with code point 1

# You can use a backslash followed by an u and 
# four hexadecimal characters to denote a unicode codepoint:

"\u0041"    # == "A"

# Or you can use curly braces and 
# specify up to six hexadecimal numbers (0 to 10FFFF):

"\u{41}"    # == "A"
"\u{1F52E}" # ==

# A string can span multiple lines:

"hello 
      world"    # same as "hello\n      world


# Note that in the above example trailing and 
# leading spaces,
# as well as newlines, end up in the resulting string.
#To avoid this, you can split a string into multiple lines by joining multiple literals with a backslash

"hello " \
"world, " \
"no newlines"   # same as "hello world, no newlines"

# or

"hello \
      world, \
      no newlines" # same as "hello word, no newlines"


# If you need to write a string that has many double quotes,
# parentheses,
# or similar characters, you can use alternative literals:

# supports double quotes and nested parenthesis
%(hello ("world"))    # same as "hello (\"world \")"

%[hello ["world"]]    # same as "hello [\"world\"]"

%{hello {"world"}}    # same as "hello {\"world\"}"

%<hello <"world">>    # same as "hello <\"world\">"


