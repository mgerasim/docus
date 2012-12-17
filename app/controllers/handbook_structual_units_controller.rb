class HandbookStructualUnitsController < ApplicationController
  before_filter :authorize
  # GET /handbook_structual_units
  # GET /handbook_structual_units.json
  def index
    @handbook_structual_units = HandbookStructualUnit.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @handbook_structual_units }
    end
  end

  # GET /handbook_structual_units/1
  # GET /handbook_structual_units/1.json
  def show
    @handbook_structual_unit = HandbookStructualUnit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @handbook_structual_unit }
    end
  end

  # GET /handbook_structual_units/new
  # GET /handbook_structual_units/new.json
  def new
    @handbook_structual_unit = HandbookStructualUnit.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @handbook_structual_unit }
    end
  end

  # GET /handbook_structual_units/1/edit
  def edit
    @handbook_structual_unit = HandbookStructualUnit.find(params[:id])
  end

  # POST /handbook_structual_units
  # POST /handbook_structual_units.json
  def create
    @handbook_structual_unit = HandbookStructualUnit.new(params[:handbook_structual_unit])

    respond_to do |format|
      if @handbook_structual_unit.save
        format.html { redirect_to @handbook_structual_unit, notice: 'Handbook structual unit was successfully created.' }
        format.json { render json: @handbook_structual_unit, status: :created, location: @handbook_structual_unit }
      else
        format.html { render action: "new" }
        format.json { render json: @handbook_structual_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /handbook_structual_units/1
  # PUT /handbook_structual_units/1.json
  def update
    @handbook_structual_unit = HandbookStructualUnit.find(params[:id])

    respond_to do |format|
      if @handbook_structual_unit.update_attributes(params[:handbook_structual_unit])
        format.html { redirect_to @handbook_structual_unit, notice: 'Handbook structual unit was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @handbook_structual_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /handbook_structual_units/1
  # DELETE /handbook_structual_units/1.json
  def destroy
    @handbook_structual_unit = HandbookStructualUnit.find(params[:id])
    @handbook_structual_unit.destroy

    respond_to do |format|
      format.html { redirect_to handbook_structual_units_url }
      format.json { head :no_content }
    end
  end
end
