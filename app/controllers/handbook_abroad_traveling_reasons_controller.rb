class HandbookAbroadTravelingReasonsController < ApplicationController
  before_filter :authorize
  # GET /handbook_abroad_traveling_reasons
  # GET /handbook_abroad_traveling_reasons.json
  def index
    @handbook_abroad_traveling_reasons = HandbookAbroadTravelingReason.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @handbook_abroad_traveling_reasons }
    end
  end

  # GET /handbook_abroad_traveling_reasons/1
  # GET /handbook_abroad_traveling_reasons/1.json
  def show
    @handbook_abroad_traveling_reason = HandbookAbroadTravelingReason.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @handbook_abroad_traveling_reason }
    end
  end

  # GET /handbook_abroad_traveling_reasons/new
  # GET /handbook_abroad_traveling_reasons/new.json
  def new
    @handbook_abroad_traveling_reason = HandbookAbroadTravelingReason.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @handbook_abroad_traveling_reason }
    end
  end

  # GET /handbook_abroad_traveling_reasons/1/edit
  def edit
    @handbook_abroad_traveling_reason = HandbookAbroadTravelingReason.find(params[:id])
  end

  # POST /handbook_abroad_traveling_reasons
  # POST /handbook_abroad_traveling_reasons.json
  def create
    @handbook_abroad_traveling_reason = HandbookAbroadTravelingReason.new(params[:handbook_abroad_traveling_reason])

    respond_to do |format|
      if @handbook_abroad_traveling_reason.save
        format.html { redirect_to @handbook_abroad_traveling_reason, notice: 'Handbook abroad traveling reason was successfully created.' }
        format.json { render json: @handbook_abroad_traveling_reason, status: :created, location: @handbook_abroad_traveling_reason }
      else
        format.html { render action: "new" }
        format.json { render json: @handbook_abroad_traveling_reason.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /handbook_abroad_traveling_reasons/1
  # PUT /handbook_abroad_traveling_reasons/1.json
  def update
    @handbook_abroad_traveling_reason = HandbookAbroadTravelingReason.find(params[:id])

    respond_to do |format|
      if @handbook_abroad_traveling_reason.update_attributes(params[:handbook_abroad_traveling_reason])
        format.html { redirect_to @handbook_abroad_traveling_reason, notice: 'Handbook abroad traveling reason was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @handbook_abroad_traveling_reason.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /handbook_abroad_traveling_reasons/1
  # DELETE /handbook_abroad_traveling_reasons/1.json
  def destroy
    @handbook_abroad_traveling_reason = HandbookAbroadTravelingReason.find(params[:id])
    @handbook_abroad_traveling_reason.destroy

    respond_to do |format|
      format.html { redirect_to handbook_abroad_traveling_reasons_url }
      format.json { head :no_content }
    end
  end
end
