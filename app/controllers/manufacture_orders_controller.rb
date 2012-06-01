class ManufactureOrdersController < ApplicationController
  # GET /manufacture_orders
  # GET /manufacture_orders.json
  def index
    @manufacture_orders = ManufactureOrder.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @manufacture_orders }
    end
  end

  # GET /manufacture_orders/1
  # GET /manufacture_orders/1.json
  def show
    @manufacture_order = ManufactureOrder.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @manufacture_order }
    end
  end

  # GET /manufacture_orders/new
  # GET /manufacture_orders/new.json
  def new
    @manufacture_order = ManufactureOrder.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @manufacture_order }
    end
  end

  # GET /manufacture_orders/1/edit
  def edit
    @manufacture_order = ManufactureOrder.find(params[:id])
  end

  # POST /manufacture_orders
  # POST /manufacture_orders.json
  def create
    @manufacture_order = ManufactureOrder.new(params[:manufacture_order])

    respond_to do |format|
      if @manufacture_order.save
        format.html { redirect_to @manufacture_order, :notice => 'Manufacture order was successfully created.' }
        format.json { render :json => @manufacture_order, :status => :created, :location => @manufacture_order }
      else
        format.html { render :action => "new" }
        format.json { render :json => @manufacture_order.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /manufacture_orders/1
  # PUT /manufacture_orders/1.json
  def update
    @manufacture_order = ManufactureOrder.find(params[:id])

    respond_to do |format|
      if @manufacture_order.update_attributes(params[:manufacture_order])
        format.html { redirect_to @manufacture_order, :notice => 'Manufacture order was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @manufacture_order.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /manufacture_orders/1
  # DELETE /manufacture_orders/1.json
  def destroy
    @manufacture_order = ManufactureOrder.find(params[:id])
    @manufacture_order.destroy

    respond_to do |format|
      format.html { redirect_to manufacture_orders_url }
      format.json { head :ok }
    end
  end
end
