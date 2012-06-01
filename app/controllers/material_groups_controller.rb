class MaterialGroupsController < ApplicationController
  # GET /material_groups
  # GET /material_groups.json
  def index
    @material_groups = MaterialGroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @material_groups }
    end
  end

  # GET /material_groups/1
  # GET /material_groups/1.json
  def show
    @material_group = MaterialGroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @material_group }
    end
  end

  # GET /material_groups/new
  # GET /material_groups/new.json
  def new
    @material_group = MaterialGroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @material_group }
    end
  end

  # GET /material_groups/1/edit
  def edit
    @material_group = MaterialGroup.find(params[:id])
  end

  # POST /material_groups
  # POST /material_groups.json
  def create
    @material_group = MaterialGroup.new(params[:material_group])

    respond_to do |format|
      if @material_group.save
        format.html { redirect_to @material_group, :notice => 'Material group was successfully created.' }
        format.json { render :json => @material_group, :status => :created, :location => @material_group }
      else
        format.html { render :action => "new" }
        format.json { render :json => @material_group.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /material_groups/1
  # PUT /material_groups/1.json
  def update
    @material_group = MaterialGroup.find(params[:id])

    respond_to do |format|
      if @material_group.update_attributes(params[:material_group])
        format.html { redirect_to @material_group, :notice => 'Material group was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @material_group.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /material_groups/1
  # DELETE /material_groups/1.json
  def destroy
    @material_group = MaterialGroup.find(params[:id])
    @material_group.destroy

    respond_to do |format|
      format.html { redirect_to material_groups_url }
      format.json { head :ok }
    end
  end
end
