package validation.books

default legal_prices = false
default legal_categories = false
default allow = false

# SWITCH THESE
#lowest_price := 0
lowest_price := 1

# TODO: how do I detect duplicate id?
# duplicates {
#     data.books[_].id == 112
# }

legal_categories {
    # TODO - how do I do an OR "Computing" here?
    having_legal_category := {i | data.books[i].category == "Fiction"}
    count(having_legal_category) == count(data.books)
}

# setting the value back to 0 with fail the policy
legal_prices {
    having_positive_price := {i | data.books[i].price >= lowest_price}
    count(having_positive_price) == count(data.books)
}

allow {
    legal_prices
    #legal_categories
}