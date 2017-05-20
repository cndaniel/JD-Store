class ProductsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :update, :edit, :destroy, :jion, :quit]

  def show
    @product = Product.find(params[:id])
  end

  def index
    if params[:category].blank?
      @products = Product.where(:is_hidden => false).order("position ASC")
    else
      @category_id = Category.find_by(name: params[:category]).id
      @products = Product.where(:category_id => @category_id).order("created_at DESC")
    end
  end

   def index
     @q = Product.ransack(params[:q])
        @products = @q.result(distinct: true)
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to products_path
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end

  def add_to_cart
     @product = Product.find(params[:id])
     if !current_cart.products.include?(@product)
     current_cart.add_product_to_cart(@product)
     flash[:notice] = "你已成功将 #{@product.title} 加入购物车"
    else
      flash[:warning] = "你的购物车内已有此物品"
    end
     redirect_to :back
   end

  # --收藏--
   def join
     @product = Product.find(params[:id])
      if !current_user.is_member_of?(@product)
        current_user.join_collect!(@product)
        flash[:notice] = "收藏成功"
      end
      redirect_to product_path(@product)
    end

    def quit
      @product= Product.find(params[:id])
      if current_user.is_member_of?(@product)
        current_user.quit_collect!(@product)
        flash[:alert] = "已移除收藏夹"
      end
      redirect_to product_path(@product)
    end


  private

 def product_params
   params.require(:product).permit(:title, :description, :price, :quantity, :is_hidden)
 end
end
