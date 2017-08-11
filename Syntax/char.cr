# a char represents a unicode code point. it occupies 32 bits.
# it is created by enclosing an utf-8 character in single quotes.

'a'
'z'
'0'
'_'
'h'

# you can use a backslash to denote some special characters:

'\''    # single quote
'\\'    # backslash
'\e'    # escape
'\f'    # from feed
'\n'    # newline
'\r'    # carriage return
'\t'    # tab
'\v'    # vertical tab

# You can use a backslash followed by an u and 
# four hexadecimal characters to denote a unicode codepoint written:
'\u0041'      # == 'A'

# Or you can use curly braces and 
# specify up to six hexadecimal numbers (0 to 10FFFF):
'\u{41}'    # == 'A'
'\u{1F52E}' # == 
