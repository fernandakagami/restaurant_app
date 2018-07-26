class ProductsController < ApplicationController
  before_action :set_product, only: [:edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def edit
  end

  def create
    @product = Product.new(product_params)
      if @product.save
        flash[:sucess] = 'Product was successfully created.'
        redirect_to root_url        
      else
        render :new        
      end    
  end

  def update
    if @product.update(product_params)
      flash[:sucess] = 'Product was successfully updated.'
      redirect_to root_url        
    else
      render :edit
    end
  end

 
  def destroy
    @product.destroy
    flash[:sucess] = 'Product was successfully destroyed.'
    redirect_to root_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name)
    end
end
