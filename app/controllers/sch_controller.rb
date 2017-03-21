class SchController < ApplicationController
  def calendar
    @schs = Sch.all
  end

  def index
    @schs = Sch.all
  end

  def show
    @sch = Sch.find(params[:id])
  end

  def new
    @sch =Sch.new
  end

  def edit
    @sch =Sch.find(params[:id])
  end

  def create
    @sch =Sch.new(sch_params)
    @sch.att_save
    redirect_to :action => "index"
    #if @sch.save
      #redirect_to "sch/calendar"
    #else
      #render 'new'
    #end
  end

  def update
    @sch =Sch.find(params[:id])
    @sch.update(sch_params)
    redirect_to @sch
  end

  def destroy
    @sch = Sch.find(params[:id])
    @sch.destroy
    redirect_to :back
  end

  private
    def sch_params
      params.require(:sch).permit(:title, :date)
    end
end
