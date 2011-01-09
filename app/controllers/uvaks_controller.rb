class UvaksController < ApplicationController
  # GET /uvaks
  # GET /uvaks.xml
  def index
    @uvaks = Uvak.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @uvaks }
    end
  end

  # GET /uvaks/1
  # GET /uvaks/1.xml
  def show
    @uvak = Uvak.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @uvak }
    end
  end

  # GET /uvaks/new
  # GET /uvaks/new.xml
  def new
    @uvak = Uvak.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @uvak }
    end
  end

  # GET /uvaks/1/edit
  def edit
    @uvak = Uvak.find(params[:id])
  end

  # POST /uvaks
  # POST /uvaks.xml
  def create
    @uvak = Uvak.new(params[:uvak])

    respond_to do |format|
      if @uvak.save
        format.html { redirect_to(@uvak, :notice => 'Uvak was successfully created.') }
        format.xml  { render :xml => @uvak, :status => :created, :location => @uvak }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @uvak.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /uvaks/1
  # PUT /uvaks/1.xml
  def update
    @uvak = Uvak.find(params[:id])

    respond_to do |format|
      if @uvak.update_attributes(params[:uvak])
        format.html { redirect_to(@uvak, :notice => 'Uvak was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @uvak.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /uvaks/1
  # DELETE /uvaks/1.xml
  def destroy
    @uvak = Uvak.find(params[:id])
    @uvak.destroy

    respond_to do |format|
      format.html { redirect_to(uvaks_url) }
      format.xml  { head :ok }
    end
  end
end
