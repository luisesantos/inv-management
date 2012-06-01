class BusinessProcessesController < ApplicationController
  # GET /business_processes
  # GET /business_processes.json
  def index
    @business_processes = BusinessProcess.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @business_processes }
    end
  end

  # GET /business_processes/1
  # GET /business_processes/1.json
  def show
    @business_process = BusinessProcess.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @business_process }
    end
  end

  # GET /business_processes/new
  # GET /business_processes/new.json
  def new
    @business_process = BusinessProcess.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @business_process }
    end
  end

  # GET /business_processes/1/edit
  def edit
    @business_process = BusinessProcess.find(params[:id])
  end

  # POST /business_processes
  # POST /business_processes.json
  def create
    @business_process = BusinessProcess.new(params[:business_process])

    respond_to do |format|
      if @business_process.save
        format.html { redirect_to @business_process, :notice => 'Business process was successfully created.' }
        format.json { render :json => @business_process, :status => :created, :location => @business_process }
      else
        format.html { render :action => "new" }
        format.json { render :json => @business_process.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /business_processes/1
  # PUT /business_processes/1.json
  def update
    @business_process = BusinessProcess.find(params[:id])

    respond_to do |format|
      if @business_process.update_attributes(params[:business_process])
        format.html { redirect_to @business_process, :notice => 'Business process was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @business_process.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /business_processes/1
  # DELETE /business_processes/1.json
  def destroy
    @business_process = BusinessProcess.find(params[:id])
    @business_process.destroy

    respond_to do |format|
      format.html { redirect_to business_processes_url }
      format.json { head :ok }
    end
  end
end
