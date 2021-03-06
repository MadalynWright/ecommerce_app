class ProductsController < ApplicationController
  def new
  	@product = Product.new
  end

  def index
  end

  def show
    @product = Product.find (params[:id])
  end

  def edit
    @product = Product.find(params[:id])
  end

  def create
  	@product = Product.create(product_params)
  	if @product.save
  		redirect_to @product
  	else
  		render :new
  	end
  end

  def update
    @product = Product.find(params[:id])
    @product.update(product_params)
      if @product.save
         redirect_to @product
       else
        render :edit
       end 
  end

  def destroy
    @product = Product.find(params[:id])
    @prodcut.destroy
    redirect_to products_path
  end
  
end
