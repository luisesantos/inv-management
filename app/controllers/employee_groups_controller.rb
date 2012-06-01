class EmployeeGroupsController < ApplicationController
  # GET /employee_groups
  # GET /employee_groups.json
  def index
    @employee_groups = EmployeeGroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @employee_groups }
    end
  end

  # GET /employee_groups/1
  # GET /employee_groups/1.json
  def show
    @employee_group = EmployeeGroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @employee_group }
    end
  end

  # GET /employee_groups/new
  # GET /employee_groups/new.json
  def new
    @employee_group = EmployeeGroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @employee_group }
    end
  end

  # GET /employee_groups/1/edit
  def edit
    @employee_group = EmployeeGroup.find(params[:id])
  end

  # POST /employee_groups
  # POST /employee_groups.json
  def create
    @employee_group = EmployeeGroup.new(params[:employee_group])

    respond_to do |format|
      if @employee_group.save
        format.html { redirect_to @employee_group, :notice => 'Employee group was successfully created.' }
        format.json { render :json => @employee_group, :status => :created, :location => @employee_group }
      else
        format.html { render :action => "new" }
        format.json { render :json => @employee_group.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /employee_groups/1
  # PUT /employee_groups/1.json
  def update
    @employee_group = EmployeeGroup.find(params[:id])

    respond_to do |format|
      if @employee_group.update_attributes(params[:employee_group])
        format.html { redirect_to @employee_group, :notice => 'Employee group was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @employee_group.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /employee_groups/1
  # DELETE /employee_groups/1.json
  def destroy
    @employee_group = EmployeeGroup.find(params[:id])
    @employee_group.destroy

    respond_to do |format|
      format.html { redirect_to employee_groups_url }
      format.json { head :ok }
    end
  end
end
