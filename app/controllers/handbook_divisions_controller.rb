class HandbookDivisionsController < ApplicationController
  before_filter :authorize
  # GET /handbook_divisions
  # GET /handbook_divisions.json
  def index
    @handbook_divisions = HandbookDivision.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @handbook_divisions }
    end
  end

  # GET /handbook_divisions/1
  # GET /handbook_divisions/1.json
  def show
    @handbook_division = HandbookDivision.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @handbook_division }
    end
  end

  # GET /handbook_divisions/new
  # GET /handbook_divisions/new.json
  def new
    @handbook_division = HandbookDivision.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @handbook_division }
    end
  end

  # GET /handbook_divisions/1/edit
  def edit
    @handbook_division = HandbookDivision.find(params[:id])
  end

  # POST /handbook_divisions
  # POST /handbook_divisions.json
  def create
    @handbook_division = HandbookDivision.new(params[:handbook_division])

    respond_to do |format|
      if @handbook_division.save
        format.html { redirect_to @handbook_division, notice: 'Handbook division was successfully created.' }
        format.json { render json: @handbook_division, status: :created, location: @handbook_division }
      else
        format.html { render action: "new" }
        format.json { render json: @handbook_division.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /handbook_divisions/1
  # PUT /handbook_divisions/1.json
  def update
    @handbook_division = HandbookDivision.find(params[:id])

    respond_to do |format|
      if @handbook_division.update_attributes(params[:handbook_division])
        format.html { redirect_to @handbook_division, notice: 'Handbook division was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @handbook_division.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /handbook_divisions/1
  # DELETE /handbook_divisions/1.json
  def destroy
    @handbook_division = HandbookDivision.find(params[:id])
    @handbook_division.destroy

    respond_to do |format|
      format.html { redirect_to handbook_divisions_url }
      format.json { head :no_content }
    end
  end
end
