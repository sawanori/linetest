class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end
  def edit
    @task = Task.find(params[:id])
  end

  def update
    task = Task.find(params[:id])
    task.task = params[:task]
    if task.save
      redirect_to tasks_index_path,
       notice:'１件更新'
    else
      redirect_to tasks_index_path,
       alert:'失敗'
    end
  end
  
  

  def delete
    task = Task.find(params[:id])
    if task.destroy
      redirect_to tasks_index_path,
        notice: "１件削除しました"
    else
      redirect_to tasks_index_path,
       alert:'削除失敗'
    end
  end
end
