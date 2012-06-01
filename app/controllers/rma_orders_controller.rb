class RmaOrdersController < ApplicationController
  # GET /rma_orders
  # GET /rma_orders.json
  def index
    @rma_orders = RmaOrder.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @rma_orders }
    end
  end

  # GET /rma_orders/1
  # GET /rma_orders/1.json
  def show
    @rma_order = RmaOrder.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @rma_order }
    end
  end

  # GET /rma_orders/new
  # GET /rma_orders/new.json
  def new
    @rma_order = RmaOrder.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @rma_order }
    end
  end

  # GET /rma_orders/1/edit
  def edit
    @rma_order = RmaOrder.find(params[:id])
  end

  # POST /rma_orders
  # POST /rma_orders.json
  def create
    @rma_order = RmaOrder.new(params[:rma_order])

    respond_to do |format|
      if @rma_order.save
        format.html { redirect_to @rma_order, :notice => 'Rma order was successfully created.' }
        format.json { render :json => @rma_order, :status => :created, :location => @rma_order }
      else
        format.html { render :action => "new" }
        format.json { render :json => @rma_order.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /rma_orders/1
  # PUT /rma_orders/1.json
  def update
    @rma_order = RmaOrder.find(params[:id])

    respond_to do |format|
      if @rma_order.update_attributes(params[:rma_order])
        format.html { redirect_to @rma_order, :notice => 'Rma order was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @rma_order.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /rma_orders/1
  # DELETE /rma_orders/1.json
  def destroy
    @rma_order = RmaOrder.find(params[:id])
    @rma_order.destroy

    respond_to do |format|
      format.html { redirect_to rma_orders_url }
      format.json { head :ok }
    end
  end
end
