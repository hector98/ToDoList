class TasksController < ApplicationController

  def create
    @category = Category.find(params[:category_id])
    @task = @category.tasks.create(task_params)
    
    if @task.save
      puts "siiiiiiiiiiiiiiiiii"
      sleep(10)
      redirect_to category_path(@category)
    else
      puts "noooo"
    end
  end

  private
  def task_params
    params.require(:task).permit(:title, :body)
  end

end
