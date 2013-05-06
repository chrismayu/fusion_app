class YouthsController < ApplicationController
  # GET /youths
  # GET /youths.json
  def index
    @youths = Youth.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @youths }
    end
  end

  # GET /youths/1
  # GET /youths/1.json
  def show
    @youth = Youth.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @youth }
    end
  end

  # GET /youths/new
  # GET /youths/new.json
  def new
    @youth = Youth.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @youth }
    end
  end

  # GET /youths/1/edit
  def edit
    @youth = Youth.find(params[:id])
  end

  # POST /youths
  # POST /youths.json
  def create
    @youth = Youth.new(params[:youth])

    respond_to do |format|
      if @youth.save
        format.html { redirect_to @youth, notice: 'Youth was successfully created.' }
        format.json { render json: @youth, status: :created, location: @youth }
      else
        format.html { render action: "new" }
        format.json { render json: @youth.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /youths/1
  # PUT /youths/1.json
  def update
    @youth = Youth.find(params[:id])

    respond_to do |format|
      if @youth.update_attributes(params[:youth])
        format.html { redirect_to @youth, notice: 'Youth was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @youth.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /youths/1
  # DELETE /youths/1.json
  def destroy
    @youth = Youth.find(params[:id])
    @youth.destroy

    respond_to do |format|
      format.html { redirect_to youths_url }
      format.json { head :no_content }
    end
  end
end
