class TasksController < ApplicationController
  def index
    @mtasks = Mtask.all
  end
end
