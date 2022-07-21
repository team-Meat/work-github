class Public::OrdersController < ApplicationController

  def new
    @order = Order.new
  end
  
  def create
    # ログインユーザーのカートアイテムをすべて取り出して cart_items に入れます
    @cart_items = current_customer.cart_items.all
    
    @order = current_customer.order.new(order_params)
    
    if @order.save
    
    end
  end
  
  def index
  end
  
  def show
  end
  
  def confirm
  end
end
