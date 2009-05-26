require 'rho/rhocontroller'

class PublicTimeLineController < Rho::RhoController

  #GET /PublicTimeLine
  def index
    @publictimelines = PublicTimeLine.find(:all)
    render
  end

  # GET /PublicTimeLine/1
  def show
    @publictimeline = PublicTimeLine.find(@params['id'])
    render :action => :show
  end

  # GET /PublicTimeLine/new
  def new
    @publictimeline = PublicTimeLine.new
    render :action => :new
  end

  # GET /PublicTimeLine/1/edit
  def edit
    @publictimeline = PublicTimeLine.find(@params['id'])
    render :action => :edit
  end

  # POST /PublicTimeLine/create
  def create
    @publictimeline = PublicTimeLine.new(@params['publictimeline'])
    @publictimeline.save
    redirect :action => :index
  end

  # POST /PublicTimeLine/1/update
  def update
    @publictimeline = PublicTimeLine.find(@params['id'])
    @publictimeline.update_attributes(@params['publictimeline'])
    redirect :action => :index
  end

  # POST /PublicTimeLine/1/delete
  def delete
    @publictimeline = PublicTimeLine.find(@params['id'])
    @publictimeline.destroy
    redirect :action => :index
  end
end
