class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]
  before_action :set_options_for_select, only: [:new, :create, :edit, :update]

  def index
    @orders = Order.all
  end

  def show
  end

  def new
    @order = Order.new
  end

  def edit
  end

  def create
    @order = Order.new(order_params)

    if @order.save
      redirect_to @order
    else
      render :new
    end    
  end

  def update
    respond_to do |format|
      if @order.update(order_params)
        redirect_to @order
      else
        render :edit
      end
    end
  end

  def destroy
    @order.destroy
    redirect_to orders_url
  end

  private

    # Para pegar os tipos
    def set_options_for_select
      @product_options_for_select = Product.all
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:table, :quantity, :product_id)
    end
end
