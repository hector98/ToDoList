class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    respond_to do |f|
      f.html { render partial: 'show', locals: { category: @category } }
    end
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    @category.save

    if @category.save
      respond_to index
      #  f.html { render partial: @category.tasks, locals: { category: @category } }
      #end
        
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    def category_params
      params.require(:category).permit(:name, :color)
    end
end
