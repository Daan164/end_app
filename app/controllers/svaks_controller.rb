class SvaksController < ApplicationController
  # GET /svaks
  # GET /svaks.xml
  def index
    @svaks = Svak.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @svaks }
    end
  end

  # GET /svaks/1
  # GET /svaks/1.xml
  def show
    @svak = Svak.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @svak }
    end
  end

  # GET /svaks/new
  # GET /svaks/new.xml
  def new
    @svak = Svak.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @svak }
    end
  end

  # GET /svaks/1/edit
  def edit
    @svak = Svak.find(params[:id])
  end

  # POST /svaks
  # POST /svaks.xml
  def create
    @svak = Svak.new(params[:svak])

    respond_to do |format|
      if @svak.save
        format.html { redirect_to(@svak, :notice => 'Svak was successfully created.') }
        format.xml  { render :xml => @svak, :status => :created, :location => @svak }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @svak.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /svaks/1
  # PUT /svaks/1.xml
  def update
    @svak = Svak.find(params[:id])

    respond_to do |format|
      if @svak.update_attributes(params[:svak])
        format.html { redirect_to(@svak, :notice => 'Svak was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @svak.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /svaks/1
  # DELETE /svaks/1.xml
  def destroy
    @svak = Svak.find(params[:id])
    @svak.destroy

    respond_to do |format|
      format.html { redirect_to(svaks_url) }
      format.xml  { head :ok }
    end
  end
end
