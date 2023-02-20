class ToDosController < ApplicationController
  def index
    if @show_done = params[:show_done] == 'true'
      @to_dos = ToDo.all
    else
      @to_dos = ToDo.where(done: [nil, false])
    end
    @new_to_do = ToDo.new
  end

  def create
    @new_to_do = ToDo.new
    if @new_to_do.update(to_do_params)
      redirect_to root_path
    else
      render :index
    end
  end

  def update
    @to_do = ToDo.where(id: params[:id]).first!
    @to_do.update!(to_do_params)
    redirect_to root_path
  end

  private

  def to_do_params
    params.require(:to_do).permit(:title, :done)
  end
end
