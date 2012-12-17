class AbroadsController < ApplicationController
  before_filter :authorize
  # GET /abroads
  # GET /abroads.json
  def index
    @abroads = Abroad.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @abroads }
    end
  end

  # GET /abroads/1
  # GET /abroads/1.json
  def show
    @abroad = Abroad.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @abroad }
    end
  end

  # GET /abroads/new
  # GET /abroads/new.json
  def new
    @abroad = Abroad.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @abroad }
    end
  end

  # GET /abroads/1/edit
  def edit
    @abroad = Abroad.find(params[:id])
  end

  # POST /abroads
  # POST /abroads.json
  def create
    @abroad = Abroad.new(params[:abroad])

    respond_to do |format|
      if @abroad.save
        format.html { redirect_to @abroad, notice: 'Abroad was successfully created.' }
        format.json { render json: @abroad, status: :created, location: @abroad }
      else
        format.html { render action: "new" }
        format.json { render json: @abroad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /abroads/1
  # PUT /abroads/1.json
  def update
    @abroad = Abroad.find(params[:id])

    respond_to do |format|
      if @abroad.update_attributes(params[:abroad])
        format.html { redirect_to @abroad, notice: 'Abroad was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @abroad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /abroads/1
  # DELETE /abroads/1.json
  def destroy
    @abroad = Abroad.find(params[:id])
    @abroad.destroy

    respond_to do |format|
      format.html { redirect_to abroads_url }
      format.json { head :no_content }
    end
  end
end
