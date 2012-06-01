class DocumentedMaterialsController < ApplicationController
  # GET /documented_materials
  # GET /documented_materials.json
  def index
    @documented_materials = DocumentedMaterial.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @documented_materials }
    end
  end

  # GET /documented_materials/1
  # GET /documented_materials/1.json
  def show
    @documented_material = DocumentedMaterial.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @documented_material }
    end
  end

  # GET /documented_materials/new
  # GET /documented_materials/new.json
  def new
    @documented_material = DocumentedMaterial.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @documented_material }
    end
  end

  # GET /documented_materials/1/edit
  def edit
    @documented_material = DocumentedMaterial.find(params[:id])
  end

  # POST /documented_materials
  # POST /documented_materials.json
  def create
    @documented_material = DocumentedMaterial.new(params[:documented_material])

    respond_to do |format|
      if @documented_material.save
        format.html { redirect_to @documented_material, :notice => 'Documented material was successfully created.' }
        format.json { render :json => @documented_material, :status => :created, :location => @documented_material }
      else
        format.html { render :action => "new" }
        format.json { render :json => @documented_material.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /documented_materials/1
  # PUT /documented_materials/1.json
  def update
    @documented_material = DocumentedMaterial.find(params[:id])

    respond_to do |format|
      if @documented_material.update_attributes(params[:documented_material])
        format.html { redirect_to @documented_material, :notice => 'Documented material was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @documented_material.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /documented_materials/1
  # DELETE /documented_materials/1.json
  def destroy
    @documented_material = DocumentedMaterial.find(params[:id])
    @documented_material.destroy

    respond_to do |format|
      format.html { redirect_to documented_materials_url }
      format.json { head :ok }
    end
  end
end
