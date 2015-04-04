class ShoppingCartsController < ApplicationController
  #before_filter :extract_shopping_cart

  def index
    @cart = session[:cart]
  end

  def add
  if params[:item].present?
    session[:cart] << params[:item]
    render :js => "$('#order_pop').dialog('close')"
  end
  end

  def remove
    # p "saaaaaaaaaaaaaaaaa", session[:cart]
    # arr = session[:cart]
    # p "iiiiiiiiiii", params[:item]
    # arr = arr.delete_if {|i| i == params[:item]}
    # session[:cart] = []
    # p "saaaaaaaaaaaaaaaaa", session[:cart]
    # session[:cart] = arr
    # p "saaaaaaaaaaaaaaaaa", session[:cart]
    # ssssss
  if params[:item].present?
    session[:cart] = session[:cart] - [params[:item]]
    render :js => "window.location.href='/cart'"
  end
  end

end
