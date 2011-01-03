class Vak::StudentsController < ApplicationController
  # GET /vak/students
  # GET /vak/students.xml
  def index
    @vak_students = Vak::Student.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @vak_students }
    end
  end

  # GET /vak/students/1
  # GET /vak/students/1.xml
  def show
    @vak_student = Vak::Student.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @vak_student }
    end
  end

  # GET /vak/students/new
  # GET /vak/students/new.xml
  def new
    @vak_student = Vak::Student.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @vak_student }
    end
  end

  # GET /vak/students/1/edit
  def edit
    @vak_student = Vak::Student.find(params[:id])
  end

  # POST /vak/students
  # POST /vak/students.xml
  def create
    @vak_student = Vak::Student.new(params[:vak_student])

    respond_to do |format|
      if @vak_student.save
        format.html { redirect_to(@vak_student, :notice => 'Student was successfully created.') }
        format.xml  { render :xml => @vak_student, :status => :created, :location => @vak_student }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @vak_student.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /vak/students/1
  # PUT /vak/students/1.xml
  def update
    @vak_student = Vak::Student.find(params[:id])

    respond_to do |format|
      if @vak_student.update_attributes(params[:vak_student])
        format.html { redirect_to(@vak_student, :notice => 'Student was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @vak_student.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /vak/students/1
  # DELETE /vak/students/1.xml
  def destroy
    @vak_student = Vak::Student.find(params[:id])
    @vak_student.destroy

    respond_to do |format|
      format.html { redirect_to(vak_students_url) }
      format.xml  { head :ok }
    end
  end
end
