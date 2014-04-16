Order.delete_all
Order.create!( id: 1, subtotal: 12.00, tax: 0.00, shipping: 10.00, total: 22.00, status: 3)
Order.create!( id: 2, subtotal: 102.00, tax: 0.00, shipping: 22.00, total: 124.00, status: 2)
Order.create!( id: 3, subtotal: 100.00, tax: 7.00, shipping: 10.00, total: 117.00, status: 2)