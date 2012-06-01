class TransferOrdersController < ApplicationController
  # GET /transfer_orders
  # GET /transfer_orders.json
  def index
    @transfer_orders = TransferOrder.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @transfer_orders }
    end
  end

  # GET /transfer_orders/1
  # GET /transfer_orders/1.json
  def show
    @transfer_order = TransferOrder.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @transfer_order }
    end
  end

  # GET /transfer_orders/new
  # GET /transfer_orders/new.json
  def new
    @transfer_order = TransferOrder.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @transfer_order }
    end
  end

  # GET /transfer_orders/1/edit
  def edit
    @transfer_order = TransferOrder.find(params[:id])
  end

  # POST /transfer_orders
  # POST /transfer_orders.json
  def create
    @transfer_order = TransferOrder.new(params[:transfer_order])

    respond_to do |format|
      if @transfer_order.save
        format.html { redirect_to @transfer_order, :notice => 'Transfer order was successfully created.' }
        format.json { render :json => @transfer_order, :status => :created, :location => @transfer_order }
      else
        format.html { render :action => "new" }
        format.json { render :json => @transfer_order.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /transfer_orders/1
  # PUT /transfer_orders/1.json
  def update
    @transfer_order = TransferOrder.find(params[:id])

    respond_to do |format|
      if @transfer_order.update_attributes(params[:transfer_order])
        format.html { redirect_to @transfer_order, :notice => 'Transfer order was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @transfer_order.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /transfer_orders/1
  # DELETE /transfer_orders/1.json
  def destroy
    @transfer_order = TransferOrder.find(params[:id])
    @transfer_order.destroy

    respond_to do |format|
      format.html { redirect_to transfer_orders_url }
      format.json { head :ok }
    end
  end
end
