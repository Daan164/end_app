class Vak::UsersController < ApplicationController
  # GET /vak/users
  # GET /vak/users.xml
  def index
    @vak_users = Vak::User.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @vak_users }
    end
  end

  # GET /vak/users/1
  # GET /vak/users/1.xml
  def show
    @vak_user = Vak::User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @vak_user }
    end
  end

  # GET /vak/users/new
  # GET /vak/users/new.xml
  def new
    @vak_user = Vak::User.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @vak_user }
    end
  end

  # GET /vak/users/1/edit
  def edit
    @vak_user = Vak::User.find(params[:id])
  end

  # POST /vak/users
  # POST /vak/users.xml
  def create
    @vak_user = Vak::User.new(params[:vak_user])

    respond_to do |format|
      if @vak_user.save
        format.html { redirect_to(@vak_user, :notice => 'User was successfully created.') }
        format.xml  { render :xml => @vak_user, :status => :created, :location => @vak_user }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @vak_user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /vak/users/1
  # PUT /vak/users/1.xml
  def update
    @vak_user = Vak::User.find(params[:id])

    respond_to do |format|
      if @vak_user.update_attributes(params[:vak_user])
        format.html { redirect_to(@vak_user, :notice => 'User was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @vak_user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /vak/users/1
  # DELETE /vak/users/1.xml
  def destroy
    @vak_user = Vak::User.find(params[:id])
    @vak_user.destroy

    respond_to do |format|
      format.html { redirect_to(vak_users_url) }
      format.xml  { head :ok }
    end
  end
end
