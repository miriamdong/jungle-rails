class Admin::DashboardController < ApplicationController

http_basic_authenticate_with name: ENV['BASIC_USERNAME'], password: ENV['BASIC_PASSWORD']
  def show
    @product_count = Product.count
    @category_count = Category.count
end
end