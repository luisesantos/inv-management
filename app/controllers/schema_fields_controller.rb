class SchemaFieldsController < ApplicationController
  # GET /schema_fields
  # GET /schema_fields.json
  def index
    @schema_fields = SchemaField.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @schema_fields }
    end
  end

  # GET /schema_fields/1
  # GET /schema_fields/1.json
  def show
    @schema_field = SchemaField.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @schema_field }
    end
  end

  # GET /schema_fields/new
  # GET /schema_fields/new.json
  def new
    @schema_field = SchemaField.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @schema_field }
    end
  end

  # GET /schema_fields/1/edit
  def edit
    @schema_field = SchemaField.find(params[:id])
  end

  # POST /schema_fields
  # POST /schema_fields.json
  def create
    @schema_field = SchemaField.new(params[:schema_field])

    respond_to do |format|
      if @schema_field.save
        format.html { redirect_to @schema_field, :notice => 'Schema field was successfully created.' }
        format.json { render :json => @schema_field, :status => :created, :location => @schema_field }
      else
        format.html { render :action => "new" }
        format.json { render :json => @schema_field.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /schema_fields/1
  # PUT /schema_fields/1.json
  def update
    @schema_field = SchemaField.find(params[:id])

    respond_to do |format|
      if @schema_field.update_attributes(params[:schema_field])
        format.html { redirect_to @schema_field, :notice => 'Schema field was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @schema_field.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /schema_fields/1
  # DELETE /schema_fields/1.json
  def destroy
    @schema_field = SchemaField.find(params[:id])
    @schema_field.destroy

    respond_to do |format|
      format.html { redirect_to schema_fields_url }
      format.json { head :ok }
    end
  end
end
