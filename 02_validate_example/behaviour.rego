package validation.behaviour

# without default result will be missing from output if false
default allow_id = false
default allow_id2 = false
#default allow_id3 = false

# this will evaluate "false"
allow_id {
    data.books[_].id == 112
}

# this will evaluate "true" and override allow
allow_id {
    data.books[_].id == 111
}

# this will evaulate false and return another parameter
allow_id2 {
    data.books[_].id == 112
}

# this is false and will not return a value if default not set
allow_id3 {
    data.books[_].id == 130
}

