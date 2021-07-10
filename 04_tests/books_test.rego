package validation.books

test_legal_categories {
    legal_categories with input as {"books": [ { "category":"Fiction"} ] }
}

test_illegal_categories {
    legal_categories with input as {"books": [ { "category":"History"} ] }
}

test_legal_prices {
    legal_categories with input as {"books": [ { "price":20} ] }
}

test_illegal_prices {
    legal_categories with input as {"books": [ { "price":-10} ] }
}