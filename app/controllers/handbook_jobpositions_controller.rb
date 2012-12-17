class HandbookJobpositionsController < ApplicationController
  before_filter :authorize
  # GET /handbook_jobpositions
  # GET /handbook_jobpositions.json
  def index
    @handbook_jobpositions = HandbookJobposition.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @handbook_jobpositions }
    end
  end

  # GET /handbook_jobpositions/1
  # GET /handbook_jobpositions/1.json
  def show
    @handbook_jobposition = HandbookJobposition.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @handbook_jobposition }
    end
  end

  # GET /handbook_jobpositions/new
  # GET /handbook_jobpositions/new.json
  def new
    @handbook_jobposition = HandbookJobposition.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @handbook_jobposition }
    end
  end

  # GET /handbook_jobpositions/1/edit
  def edit
    @handbook_jobposition = HandbookJobposition.find(params[:id])
  end

  # POST /handbook_jobpositions
  # POST /handbook_jobpositions.json
  def create
    @handbook_jobposition = HandbookJobposition.new(params[:handbook_jobposition])

    respond_to do |format|
      if @handbook_jobposition.save
        format.html { redirect_to @handbook_jobposition, notice: 'Handbook jobposition was successfully created.' }
        format.json { render json: @handbook_jobposition, status: :created, location: @handbook_jobposition }
      else
        format.html { render action: "new" }
        format.json { render json: @handbook_jobposition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /handbook_jobpositions/1
  # PUT /handbook_jobpositions/1.json
  def update
    @handbook_jobposition = HandbookJobposition.find(params[:id])

    respond_to do |format|
      if @handbook_jobposition.update_attributes(params[:handbook_jobposition])
        format.html { redirect_to @handbook_jobposition, notice: 'Handbook jobposition was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @handbook_jobposition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /handbook_jobpositions/1
  # DELETE /handbook_jobpositions/1.json
  def destroy
    @handbook_jobposition = HandbookJobposition.find(params[:id])
    @handbook_jobposition.destroy

    respond_to do |format|
      format.html { redirect_to handbook_jobpositions_url }
      format.json { head :no_content }
    end
  end
end
