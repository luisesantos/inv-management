class PickOrdersController < ApplicationController
  # GET /pick_orders
  # GET /pick_orders.json
  def index
    @pick_orders = PickOrder.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @pick_orders }
    end
  end

  # GET /pick_orders/1
  # GET /pick_orders/1.json
  def show
    @pick_order = PickOrder.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @pick_order }
    end
  end

  # GET /pick_orders/new
  # GET /pick_orders/new.json
  def new
    @pick_order = PickOrder.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @pick_order }
    end
  end

  # GET /pick_orders/1/edit
  def edit
    @pick_order = PickOrder.find(params[:id])
  end

  # POST /pick_orders
  # POST /pick_orders.json
  def create
    @pick_order = PickOrder.new(params[:pick_order])

    respond_to do |format|
      if @pick_order.save
        format.html { redirect_to @pick_order, :notice => 'Pick order was successfully created.' }
        format.json { render :json => @pick_order, :status => :created, :location => @pick_order }
      else
        format.html { render :action => "new" }
        format.json { render :json => @pick_order.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pick_orders/1
  # PUT /pick_orders/1.json
  def update
    @pick_order = PickOrder.find(params[:id])

    respond_to do |format|
      if @pick_order.update_attributes(params[:pick_order])
        format.html { redirect_to @pick_order, :notice => 'Pick order was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @pick_order.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pick_orders/1
  # DELETE /pick_orders/1.json
  def destroy
    @pick_order = PickOrder.find(params[:id])
    @pick_order.destroy

    respond_to do |format|
      format.html { redirect_to pick_orders_url }
      format.json { head :ok }
    end
  end
end
