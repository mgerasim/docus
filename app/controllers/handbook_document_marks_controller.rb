class HandbookDocumentMarksController < ApplicationController
  before_filter :authorize
  # GET /handbook_document_marks
  # GET /handbook_document_marks.json
  def index
    @handbook_document_marks = HandbookDocumentMark.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @handbook_document_marks }
    end
  end

  # GET /handbook_document_marks/1
  # GET /handbook_document_marks/1.json
  def show
    @handbook_document_mark = HandbookDocumentMark.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @handbook_document_mark }
    end
  end

  # GET /handbook_document_marks/new
  # GET /handbook_document_marks/new.json
  def new
    @handbook_document_mark = HandbookDocumentMark.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @handbook_document_mark }
    end
  end

  # GET /handbook_document_marks/1/edit
  def edit
    @handbook_document_mark = HandbookDocumentMark.find(params[:id])
  end

  # POST /handbook_document_marks
  # POST /handbook_document_marks.json
  def create
    @handbook_document_mark = HandbookDocumentMark.new(params[:handbook_document_mark])

    respond_to do |format|
      if @handbook_document_mark.save
        format.html { redirect_to @handbook_document_mark, notice: 'Handbook document mark was successfully created.' }
        format.json { render json: @handbook_document_mark, status: :created, location: @handbook_document_mark }
      else
        format.html { render action: "new" }
        format.json { render json: @handbook_document_mark.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /handbook_document_marks/1
  # PUT /handbook_document_marks/1.json
  def update
    @handbook_document_mark = HandbookDocumentMark.find(params[:id])

    respond_to do |format|
      if @handbook_document_mark.update_attributes(params[:handbook_document_mark])
        format.html { redirect_to @handbook_document_mark, notice: 'Handbook document mark was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @handbook_document_mark.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /handbook_document_marks/1
  # DELETE /handbook_document_marks/1.json
  def destroy
    @handbook_document_mark = HandbookDocumentMark.find(params[:id])
    @handbook_document_mark.destroy

    respond_to do |format|
      format.html { redirect_to handbook_document_marks_url }
      format.json { head :no_content }
    end
  end
end
