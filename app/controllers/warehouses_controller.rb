class WarehousesController < ApplicationController
  # GET /warehouses
  # GET /warehouses.json
  def index
    @warehouses = Warehouse.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @warehouses }
    end
  end

  # GET /warehouses/1
  # GET /warehouses/1.json
  def show
    @warehouse = Warehouse.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @warehouse }
    end
  end

  # GET /warehouses/new
  # GET /warehouses/new.json
  def new
    @warehouse = Warehouse.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @warehouse }
    end
  end

  # GET /warehouses/1/edit
  def edit
    @warehouse = Warehouse.find(params[:id])
  end

  # POST /warehouses
  # POST /warehouses.json
  def create
    @warehouse = Warehouse.new(params[:warehouse])

    respond_to do |format|
      if @warehouse.save
        format.html { redirect_to @warehouse, :notice => 'Warehouse was successfully created.' }
        format.json { render :json => @warehouse, :status => :created, :location => @warehouse }
      else
        format.html { render :action => "new" }
        format.json { render :json => @warehouse.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /warehouses/1
  # PUT /warehouses/1.json
  def update
    @warehouse = Warehouse.find(params[:id])

    respond_to do |format|
      if @warehouse.update_attributes(params[:warehouse])
        format.html { redirect_to @warehouse, :notice => 'Warehouse was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @warehouse.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /warehouses/1
  # DELETE /warehouses/1.json
  def destroy
    @warehouse = Warehouse.find(params[:id])
    @warehouse.destroy

    respond_to do |format|
      format.html { redirect_to warehouses_url }
      format.json { head :ok }
    end
  end
end
