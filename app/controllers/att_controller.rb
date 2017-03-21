class AttController < ApplicationController
  def att
    @schs = Sch.all
    @users = User.all
    @atts = Att.all
  end

  def update
      @att = Att.find(params[:id])
      @att.status= @att.status==true ? false : true
      @att.save
      redirect_to :back
  end

  def show
      @sch = Sch.find(params[:id])

  end

end
