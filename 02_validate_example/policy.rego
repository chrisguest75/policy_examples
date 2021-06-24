package validation

default allow = false

# this will evaluate "false"
allow {
    data.books[_].id == 112
}

# this will evaluate "true" and override allow
allow {
    data.books[_].id == 111
}

# this will evaulate true and return another parameter
allow2 {
    data.books[_].id == 110
}

allow {
    # TODO: How do I make this check all prices
    # positive price
    data.books[_].price >= 0
}
