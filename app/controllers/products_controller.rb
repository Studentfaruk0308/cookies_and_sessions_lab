class ProductsController < ApplicationController

def index
    cart
end


def add
    cart << params[:product]
    render :index
end

private

def cart
    @cart =  session[:cart] ||= []
end

end