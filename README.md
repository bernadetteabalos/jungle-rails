# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example.
## Dependencies

- Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
- PostgreSQL 9.x
- Stripe
## Testing Suite
- Capybara
- RSpec

## Screenshots
### Landing Page
Home page with all products shown.
!["landing page"](https://github.com/bernadetteabalos/jungle-rails/blob/master/docs/landing.png?raw=true)
### Product Details Page
!["product details"](https://github.com/bernadetteabalos/jungle-rails/blob/master/docs/productdetail.png?raw=true)
### Categories 
Navbar showing categories drop-down.
!["category dropdown"](https://github.com/bernadetteabalos/jungle-rails/blob/master/docs/categories.png?raw=true)
### Admin dashboard
Admin dashboard showing categories and product numbers.
!["admin dash"](https://github.com/bernadetteabalos/jungle-rails/blob/master/docs/admindashboard.png?raw=true)
### Admin Dropdown Menu
Admin dropdown menu on admin categories page.
!["admin dropdown"](https://github.com/bernadetteabalos/jungle-rails/blob/master/docs/admindashboard2.png?raw=true)
### Product Checkout Page
!["product checkout"](https://github.com/bernadetteabalos/jungle-rails/blob/master/docs/checkout.png?raw=true)
### Product Summary after Checkout
!["checkout success"](https://github.com/bernadetteabalos/jungle-rails/blob/master/docs/successcheckout.png?raw=true)

## Additional Steps for Apple M1 Machines

1. Make sure that you are runnning Ruby 2.6.6 (`ruby -v`)
1. Install ImageMagick `brew install imagemagick imagemagick@6 --build-from-source`
2. Remove Gemfile.lock
3. Replace Gemfile with version provided [here](https://gist.githubusercontent.com/FrancisBourgouin/831795ae12c4704687a0c2496d91a727/raw/ce8e2104f725f43e56650d404169c7b11c33a5c5/Gemfile)

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
