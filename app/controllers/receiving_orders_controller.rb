class ReceivingOrdersController < ApplicationController
  # GET /receiving_orders
  # GET /receiving_orders.json
  def index
    @receiving_orders = ReceivingOrder.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @receiving_orders }
    end
  end

  # GET /receiving_orders/1
  # GET /receiving_orders/1.json
  def show
    @receiving_order = ReceivingOrder.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @receiving_order }
    end
  end

  # GET /receiving_orders/new
  # GET /receiving_orders/new.json
  def new
    @receiving_order = ReceivingOrder.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @receiving_order }
    end
  end

  # GET /receiving_orders/1/edit
  def edit
    @receiving_order = ReceivingOrder.find(params[:id])
  end

  # POST /receiving_orders
  # POST /receiving_orders.json
  def create
    @receiving_order = ReceivingOrder.new(params[:receiving_order])

    respond_to do |format|
      if @receiving_order.save
        format.html { redirect_to @receiving_order, :notice => 'Receiving order was successfully created.' }
        format.json { render :json => @receiving_order, :status => :created, :location => @receiving_order }
      else
        format.html { render :action => "new" }
        format.json { render :json => @receiving_order.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /receiving_orders/1
  # PUT /receiving_orders/1.json
  def update
    @receiving_order = ReceivingOrder.find(params[:id])

    respond_to do |format|
      if @receiving_order.update_attributes(params[:receiving_order])
        format.html { redirect_to @receiving_order, :notice => 'Receiving order was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @receiving_order.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /receiving_orders/1
  # DELETE /receiving_orders/1.json
  def destroy
    @receiving_order = ReceivingOrder.find(params[:id])
    @receiving_order.destroy

    respond_to do |format|
      format.html { redirect_to receiving_orders_url }
      format.json { head :ok }
    end
  end
end
