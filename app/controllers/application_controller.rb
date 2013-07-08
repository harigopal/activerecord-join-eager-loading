class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    @tasks = Task.joins(comments: :user)
      .includes(comments: :user)
      .order('tasks.created_at DESC')
      .limit(10).load
  end
end
