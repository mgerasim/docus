class HandbookFormAdmissionsController < ApplicationController
  before_filter :authorize
  # GET /handbook_form_admissions
  # GET /handbook_form_admissions.json
  def index
    @handbook_form_admissions = HandbookFormAdmission.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @handbook_form_admissions }
    end
  end

  # GET /handbook_form_admissions/1
  # GET /handbook_form_admissions/1.json
  def show
    @handbook_form_admission = HandbookFormAdmission.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @handbook_form_admission }
    end
  end

  # GET /handbook_form_admissions/new
  # GET /handbook_form_admissions/new.json
  def new
    @handbook_form_admission = HandbookFormAdmission.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @handbook_form_admission }
    end
  end

  # GET /handbook_form_admissions/1/edit
  def edit
    @handbook_form_admission = HandbookFormAdmission.find(params[:id])
  end

  # POST /handbook_form_admissions
  # POST /handbook_form_admissions.json
  def create
    @handbook_form_admission = HandbookFormAdmission.new(params[:handbook_form_admission])

    respond_to do |format|
      if @handbook_form_admission.save
        format.html { redirect_to @handbook_form_admission, notice: 'Handbook form admission was successfully created.' }
        format.json { render json: @handbook_form_admission, status: :created, location: @handbook_form_admission }
      else
        format.html { render action: "new" }
        format.json { render json: @handbook_form_admission.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /handbook_form_admissions/1
  # PUT /handbook_form_admissions/1.json
  def update
    @handbook_form_admission = HandbookFormAdmission.find(params[:id])

    respond_to do |format|
      if @handbook_form_admission.update_attributes(params[:handbook_form_admission])
        format.html { redirect_to @handbook_form_admission, notice: 'Handbook form admission was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @handbook_form_admission.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /handbook_form_admissions/1
  # DELETE /handbook_form_admissions/1.json
  def destroy
    @handbook_form_admission = HandbookFormAdmission.find(params[:id])
    @handbook_form_admission.destroy

    respond_to do |format|
      format.html { redirect_to handbook_form_admissions_url }
      format.json { head :no_content }
    end
  end
end
