class HandbookPlaceEmployeesController < ApplicationController
  before_filter :authorize
  # GET /handbook_place_employees
  # GET /handbook_place_employees.json
  def index
    @handbook_place_employees = HandbookPlaceEmployee.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @handbook_place_employees }
    end
  end

  # GET /handbook_place_employees/1
  # GET /handbook_place_employees/1.json
  def show
    @handbook_place_employee = HandbookPlaceEmployee.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @handbook_place_employee }
    end
  end

  # GET /handbook_place_employees/new
  # GET /handbook_place_employees/new.json
  def new
    @handbook_place_employee = HandbookPlaceEmployee.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @handbook_place_employee }
    end
  end

  # GET /handbook_place_employees/1/edit
  def edit
    @handbook_place_employee = HandbookPlaceEmployee.find(params[:id])
  end

  # POST /handbook_place_employees
  # POST /handbook_place_employees.json
  def create
    @handbook_place_employee = HandbookPlaceEmployee.new(params[:handbook_place_employee])

    respond_to do |format|
      if @handbook_place_employee.save
        format.html { redirect_to @handbook_place_employee, notice: 'Handbook place employee was successfully created.' }
        format.json { render json: @handbook_place_employee, status: :created, location: @handbook_place_employee }
      else
        format.html { render action: "new" }
        format.json { render json: @handbook_place_employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /handbook_place_employees/1
  # PUT /handbook_place_employees/1.json
  def update
    @handbook_place_employee = HandbookPlaceEmployee.find(params[:id])

    respond_to do |format|
      if @handbook_place_employee.update_attributes(params[:handbook_place_employee])
        format.html { redirect_to @handbook_place_employee, notice: 'Handbook place employee was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @handbook_place_employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /handbook_place_employees/1
  # DELETE /handbook_place_employees/1.json
  def destroy
    @handbook_place_employee = HandbookPlaceEmployee.find(params[:id])
    @handbook_place_employee.destroy

    respond_to do |format|
      format.html { redirect_to handbook_place_employees_url }
      format.json { head :no_content }
    end
  end
end
