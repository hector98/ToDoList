class TasksController < ApplicationController

  def create
    @category = Category.find(params[:category_id])
    @task = @category.tasks.create(task_params)
    
    respond_to @category
    respond_to do |f|
      f.html { render partial: 'categories/show', locals: { category: @category.tasks } }
    end    
  end

  private
  def task_params
    params.require(:task).permit(:title, :body)
  end

end
