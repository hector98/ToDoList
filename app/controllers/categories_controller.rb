class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    respond_to do |f|
      f.html { render partial: 'show', locals: { category: @category } }
      f.js
    end
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    respond_to do |f|
      if @category.save
        f.js
        #f.html { render :index, notice: 'Categoria creada con exito.' }
      else
        f.html { render :new }
        f.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def category_params
      params.require(:category).permit(:name, :color)
    end
end
