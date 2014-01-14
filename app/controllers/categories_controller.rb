class CategoriesController <ApplicationController
  before_filter :authorize, only: [:new]
	def index

		@categories = Category.all.order(:name)
	end

  def show
 		@category = Category.find(params[:id])    
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new
    @category.name = params[:category][:name].titleize
      if @category.save
        redirect_to @category
      else
        render "new"
      end
  end

end

def delete
  Category.find(params[:id]).destroy 
  redirect_to :action => 'index'
end

private
  def category_params 
    params.require(:category).permit(:name)
  end
