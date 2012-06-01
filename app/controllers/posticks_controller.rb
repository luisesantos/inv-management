class PosticksController < ApplicationController
  # GET /posticks
  # GET /posticks.json
  def index
    @posticks = Postick.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @posticks }
    end
  end

  # GET /posticks/1
  # GET /posticks/1.json
  def show
    @postick = Postick.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @postick }
    end
  end

  # GET /posticks/new
  # GET /posticks/new.json
  def new
    @postick = Postick.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @postick }
    end
  end

  # GET /posticks/1/edit
  def edit
    @postick = Postick.find(params[:id])
  end

  # POST /posticks
  # POST /posticks.json
  def create
    @postick = Postick.new(params[:postick])

    respond_to do |format|
      if @postick.save
        format.html { redirect_to @postick, :notice => 'Postick was successfully created.' }
        format.json { render :json => @postick, :status => :created, :location => @postick }
      else
        format.html { render :action => "new" }
        format.json { render :json => @postick.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /posticks/1
  # PUT /posticks/1.json
  def update
    @postick = Postick.find(params[:id])

    respond_to do |format|
      if @postick.update_attributes(params[:postick])
        format.html { redirect_to @postick, :notice => 'Postick was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @postick.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /posticks/1
  # DELETE /posticks/1.json
  def destroy
    @postick = Postick.find(params[:id])
    @postick.destroy

    respond_to do |format|
      format.html { redirect_to posticks_url }
      format.json { head :ok }
    end
  end
end
