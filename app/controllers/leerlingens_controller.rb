class LeerlingensController < ApplicationController
  # GET /leerlingens
  # GET /leerlingens.xml
  def index
    @leerlingens = Leerlingen.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @leerlingens }
    end
  end

  # GET /leerlingens/1
  # GET /leerlingens/1.xml
  def show
    @leerlingen = Leerlingen.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @leerlingen }
    end
  end

  # GET /leerlingens/new
  # GET /leerlingens/new.xml
  def new
    @leerlingen = Leerlingen.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @leerlingen }
    end
  end

  # GET /leerlingens/1/edit
  def edit
    @leerlingen = Leerlingen.find(params[:id])
  end

  # POST /leerlingens
  # POST /leerlingens.xml
  def create
    @leerlingen = Leerlingen.new(params[:leerlingen])

    respond_to do |format|
      if @leerlingen.save
        format.html { redirect_to(@leerlingen, :notice => 'Leerlingen was successfully created.') }
        format.xml  { render :xml => @leerlingen, :status => :created, :location => @leerlingen }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @leerlingen.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /leerlingens/1
  # PUT /leerlingens/1.xml
  def update
    @leerlingen = Leerlingen.find(params[:id])

    respond_to do |format|
      if @leerlingen.update_attributes(params[:leerlingen])
        format.html { redirect_to(@leerlingen, :notice => 'Leerlingen was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @leerlingen.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /leerlingens/1
  # DELETE /leerlingens/1.xml
  def destroy
    @leerlingen = Leerlingen.find(params[:id])
    @leerlingen.destroy

    respond_to do |format|
      format.html { redirect_to(leerlingens_url) }
      format.xml  { head :ok }
    end
  end
end
