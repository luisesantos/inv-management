class ApplicationUsersController < ApplicationController
  # GET /application_users
  # GET /application_users.json
  def index
    @application_users = ApplicationUser.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @application_users }
    end
  end

  # GET /application_users/1
  # GET /application_users/1.json
  def show
    @application_user = ApplicationUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @application_user }
    end
  end

  # GET /application_users/new
  # GET /application_users/new.json
  def new
    @application_user = ApplicationUser.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @application_user }
    end
  end

  # GET /application_users/1/edit
  def edit
    @application_user = ApplicationUser.find(params[:id])
  end

  # POST /application_users
  # POST /application_users.json
  def create
    @application_user = ApplicationUser.new(params[:application_user])

    respond_to do |format|
      if @application_user.save
        format.html { redirect_to @application_user, :notice => 'Application user was successfully created.' }
        format.json { render :json => @application_user, :status => :created, :location => @application_user }
      else
        format.html { render :action => "new" }
        format.json { render :json => @application_user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /application_users/1
  # PUT /application_users/1.json
  def update
    @application_user = ApplicationUser.find(params[:id])

    respond_to do |format|
      if @application_user.update_attributes(params[:application_user])
        format.html { redirect_to @application_user, :notice => 'Application user was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @application_user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /application_users/1
  # DELETE /application_users/1.json
  def destroy
    @application_user = ApplicationUser.find(params[:id])
    @application_user.destroy

    respond_to do |format|
      format.html { redirect_to application_users_url }
      format.json { head :ok }
    end
  end
end
