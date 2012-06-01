class ShippingOrdersController < ApplicationController
  # GET /shipping_orders
  # GET /shipping_orders.json
  def index
    @shipping_orders = ShippingOrder.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @shipping_orders }
    end
  end

  # GET /shipping_orders/1
  # GET /shipping_orders/1.json
  def show
    @shipping_order = ShippingOrder.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @shipping_order }
    end
  end

  # GET /shipping_orders/new
  # GET /shipping_orders/new.json
  def new
    @shipping_order = ShippingOrder.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @shipping_order }
    end
  end

  # GET /shipping_orders/1/edit
  def edit
    @shipping_order = ShippingOrder.find(params[:id])
  end

  # POST /shipping_orders
  # POST /shipping_orders.json
  def create
    @shipping_order = ShippingOrder.new(params[:shipping_order])

    respond_to do |format|
      if @shipping_order.save
        format.html { redirect_to @shipping_order, :notice => 'Shipping order was successfully created.' }
        format.json { render :json => @shipping_order, :status => :created, :location => @shipping_order }
      else
        format.html { render :action => "new" }
        format.json { render :json => @shipping_order.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /shipping_orders/1
  # PUT /shipping_orders/1.json
  def update
    @shipping_order = ShippingOrder.find(params[:id])

    respond_to do |format|
      if @shipping_order.update_attributes(params[:shipping_order])
        format.html { redirect_to @shipping_order, :notice => 'Shipping order was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @shipping_order.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /shipping_orders/1
  # DELETE /shipping_orders/1.json
  def destroy
    @shipping_order = ShippingOrder.find(params[:id])
    @shipping_order.destroy

    respond_to do |format|
      format.html { redirect_to shipping_orders_url }
      format.json { head :ok }
    end
  end
end
