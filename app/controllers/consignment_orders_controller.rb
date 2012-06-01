class ConsignmentOrdersController < ApplicationController
  # GET /consignment_orders
  # GET /consignment_orders.json
  def index
    @consignment_orders = ConsignmentOrder.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @consignment_orders }
    end
  end

  # GET /consignment_orders/1
  # GET /consignment_orders/1.json
  def show
    @consignment_order = ConsignmentOrder.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @consignment_order }
    end
  end

  # GET /consignment_orders/new
  # GET /consignment_orders/new.json
  def new
    @consignment_order = ConsignmentOrder.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @consignment_order }
    end
  end

  # GET /consignment_orders/1/edit
  def edit
    @consignment_order = ConsignmentOrder.find(params[:id])
  end

  # POST /consignment_orders
  # POST /consignment_orders.json
  def create
    @consignment_order = ConsignmentOrder.new(params[:consignment_order])

    respond_to do |format|
      if @consignment_order.save
        format.html { redirect_to @consignment_order, :notice => 'Consignment order was successfully created.' }
        format.json { render :json => @consignment_order, :status => :created, :location => @consignment_order }
      else
        format.html { render :action => "new" }
        format.json { render :json => @consignment_order.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /consignment_orders/1
  # PUT /consignment_orders/1.json
  def update
    @consignment_order = ConsignmentOrder.find(params[:id])

    respond_to do |format|
      if @consignment_order.update_attributes(params[:consignment_order])
        format.html { redirect_to @consignment_order, :notice => 'Consignment order was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @consignment_order.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /consignment_orders/1
  # DELETE /consignment_orders/1.json
  def destroy
    @consignment_order = ConsignmentOrder.find(params[:id])
    @consignment_order.destroy

    respond_to do |format|
      format.html { redirect_to consignment_orders_url }
      format.json { head :ok }
    end
  end
end
