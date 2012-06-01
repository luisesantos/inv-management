class LocatedMaterialsController < ApplicationController
  # GET /located_materials
  # GET /located_materials.json
  def index
    @located_materials = LocatedMaterial.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @located_materials }
    end
  end

  # GET /located_materials/1
  # GET /located_materials/1.json
  def show
    @located_material = LocatedMaterial.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @located_material }
    end
  end

  # GET /located_materials/new
  # GET /located_materials/new.json
  def new
    @located_material = LocatedMaterial.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @located_material }
    end
  end

  # GET /located_materials/1/edit
  def edit
    @located_material = LocatedMaterial.find(params[:id])
  end

  # POST /located_materials
  # POST /located_materials.json
  def create
    @located_material = LocatedMaterial.new(params[:located_material])

    respond_to do |format|
      if @located_material.save
        format.html { redirect_to @located_material, :notice => 'Located material was successfully created.' }
        format.json { render :json => @located_material, :status => :created, :location => @located_material }
      else
        format.html { render :action => "new" }
        format.json { render :json => @located_material.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /located_materials/1
  # PUT /located_materials/1.json
  def update
    @located_material = LocatedMaterial.find(params[:id])

    respond_to do |format|
      if @located_material.update_attributes(params[:located_material])
        format.html { redirect_to @located_material, :notice => 'Located material was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @located_material.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /located_materials/1
  # DELETE /located_materials/1.json
  def destroy
    @located_material = LocatedMaterial.find(params[:id])
    @located_material.destroy

    respond_to do |format|
      format.html { redirect_to located_materials_url }
      format.json { head :ok }
    end
  end
end
