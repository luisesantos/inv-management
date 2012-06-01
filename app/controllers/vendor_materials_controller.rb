class VendorMaterialsController < ApplicationController
  # GET /vendor_materials
  # GET /vendor_materials.json
  def index
    @vendor_materials = VendorMaterial.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @vendor_materials }
    end
  end

  # GET /vendor_materials/1
  # GET /vendor_materials/1.json
  def show
    @vendor_material = VendorMaterial.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @vendor_material }
    end
  end

  # GET /vendor_materials/new
  # GET /vendor_materials/new.json
  def new
    @vendor_material = VendorMaterial.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @vendor_material }
    end
  end

  # GET /vendor_materials/1/edit
  def edit
    @vendor_material = VendorMaterial.find(params[:id])
  end

  # POST /vendor_materials
  # POST /vendor_materials.json
  def create
    @vendor_material = VendorMaterial.new(params[:vendor_material])

    respond_to do |format|
      if @vendor_material.save
        format.html { redirect_to @vendor_material, :notice => 'Vendor material was successfully created.' }
        format.json { render :json => @vendor_material, :status => :created, :location => @vendor_material }
      else
        format.html { render :action => "new" }
        format.json { render :json => @vendor_material.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /vendor_materials/1
  # PUT /vendor_materials/1.json
  def update
    @vendor_material = VendorMaterial.find(params[:id])

    respond_to do |format|
      if @vendor_material.update_attributes(params[:vendor_material])
        format.html { redirect_to @vendor_material, :notice => 'Vendor material was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @vendor_material.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /vendor_materials/1
  # DELETE /vendor_materials/1.json
  def destroy
    @vendor_material = VendorMaterial.find(params[:id])
    @vendor_material.destroy

    respond_to do |format|
      format.html { redirect_to vendor_materials_url }
      format.json { head :ok }
    end
  end
end
