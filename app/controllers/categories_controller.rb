class CategoryController <ApplicationController
	def index
		@categories = Category.all.order(:name)
	end

   	def show
   	end

  	def new
  	end

  	def create
  	end

end