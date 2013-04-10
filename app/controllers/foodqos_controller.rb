class FoodqosController < ApplicationController
  # GET /foodqos
  # GET /foodqos.json
  def index
    @foodqos = Foodqo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @foodqos }
    end
  end

  # GET /foodqos/1
  # GET /foodqos/1.json
  def show
    @foodqo = Foodqo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @foodqo }
    end
  end

  # GET /foodqos/new
  # GET /foodqos/new.json
  def new
    @foodqo = Foodqo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @foodqo }
    end
  end

  # GET /foodqos/1/edit
  def edit
    @foodqo = Foodqo.find(params[:id])
  end

  # POST /foodqos
  # POST /foodqos.json
  def create
    @foodqo = Foodqo.new(params[:foodqo])

    respond_to do |format|
      if @foodqo.save
        format.html { redirect_to @foodqo, :notice => 'Foodqo was successfully created.' }
        format.json { render :json => @foodqo, :status => :created, :location => @foodqo }
      else
        format.html { render :action => "new" }
        format.json { render :json => @foodqo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /foodqos/1
  # PUT /foodqos/1.json
  def update
    @foodqo = Foodqo.find(params[:id])

    respond_to do |format|
      if @foodqo.update_attributes(params[:foodqo])
        format.html { redirect_to @foodqo, :notice => 'Foodqo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @foodqo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /foodqos/1
  # DELETE /foodqos/1.json
  def destroy
    @foodqo = Foodqo.find(params[:id])
    @foodqo.destroy

    respond_to do |format|
      format.html { redirect_to foodqos_url }
      format.json { head :no_content }
    end
  end
end
