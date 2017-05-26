class ProductsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :update, :edit, :destroy, :jion, :quit]
  before_action :validate_search_key, only: [:search]

  def index
  @products = Product.where(:is_hidden => false).order("position ASC")
  end

  def show
    @product = Product.find(params[:id])
    @comments = @product.comments.recent.paginate(:page => params[:page], :per_page => 5)
    @comment = Comment.new
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

  # --分类--

  def yuan
     @products = Product.where(:category => "源系").where(:is_hidden => false).order("position ASC")
   end

  def run
    @products = Product.where(:category => "润系").where(:is_hidden => false).order("position ASC")
  end

  def zhen
     @products = Product.where(:category => "臻系").where(:is_hidden => false).order("position ASC")
  end

  # --收藏--
   def join
     @product = Product.find(params[:id])
      if !current_user.is_member_of?(@product)
        current_user.join_collect!(@product)

      end
      redirect_to product_path(@product)
    end

    def quit
      @product= Product.find(params[:id])
      if current_user.is_member_of?(@product)
        current_user.quit_collect!(@product)

      end
      redirect_to product_path(@product)
    end

# --搜索功能---

def search
    if @query_string.present?
      search_result = Product.where(:is_hidden => false).ransack(@search_criteria).result(:distinct => true)
      @products = search_result.paginate(:page => params[:page], :per_page => 5 )
    end
  end


  protected

  def validate_search_key
    @query_string = params[:q].gsub(/\\|\'|\/|\?/, "") if params[:q].present?
    @search_criteria = search_criteria(@query_string)
  end


  def search_criteria(query_string)
    { :title_cont => query_string }
  end

  private

 def product_params
   params.require(:product).permit(:title, :description, :price, :quantity, :is_hidden)
 end
end
