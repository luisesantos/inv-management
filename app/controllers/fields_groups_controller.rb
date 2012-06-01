class FieldsGroupsController < ApplicationController
  # GET /fields_groups
  # GET /fields_groups.json
  def index
    @fields_groups = FieldsGroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @fields_groups }
    end
  end

  # GET /fields_groups/1
  # GET /fields_groups/1.json
  def show
    @fields_group = FieldsGroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @fields_group }
    end
  end

  # GET /fields_groups/new
  # GET /fields_groups/new.json
  def new
    @fields_group = FieldsGroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @fields_group }
    end
  end

  # GET /fields_groups/1/edit
  def edit
    @fields_group = FieldsGroup.find(params[:id])
  end

  # POST /fields_groups
  # POST /fields_groups.json
  def create
    @fields_group = FieldsGroup.new(params[:fields_group])

    respond_to do |format|
      if @fields_group.save
        format.html { redirect_to @fields_group, :notice => 'Fields group was successfully created.' }
        format.json { render :json => @fields_group, :status => :created, :location => @fields_group }
      else
        format.html { render :action => "new" }
        format.json { render :json => @fields_group.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /fields_groups/1
  # PUT /fields_groups/1.json
  def update
    @fields_group = FieldsGroup.find(params[:id])

    respond_to do |format|
      if @fields_group.update_attributes(params[:fields_group])
        format.html { redirect_to @fields_group, :notice => 'Fields group was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @fields_group.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /fields_groups/1
  # DELETE /fields_groups/1.json
  def destroy
    @fields_group = FieldsGroup.find(params[:id])
    @fields_group.destroy

    respond_to do |format|
      format.html { redirect_to fields_groups_url }
      format.json { head :ok }
    end
  end
end
