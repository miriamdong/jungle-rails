# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example. This app covers the full stacks using Ruby on Rails, PostgreSQL, and Stripe

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe

## Final Product

!["Screenshot of all listings"](https://github.com/miriamdong/jungle-rails/blob/master/Doc/screencapture-localhost-3000-2021-05-04-16_05_06.png?raw=true)
!["Screenshot of shopping cart"](https://github.com/miriamdong/jungle-rails/blob/master/Doc/screencapture-localhost-3000-cart-2021-05-04-16_06_21.png?raw=true)
!["Screenshot of order-receipt"](https://github.com/miriamdong/jungle-rails/blob/master/Doc/screencapture-localhost-3000-orders-15-2021-05-04-16_06_46.png?raw=true)
