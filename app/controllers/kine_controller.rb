class KineController < ApplicationController
  # GET /kine
  # GET /kine.json
  def index
    @kine = Kine.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @kine }
    end
  end

  # GET /kine/1
  # GET /kine/1.json
  def show
    @cow = Cow.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cow }
    end
  end

  # GET /kine/new
  # GET /kine/new.json
  def new
    @cow = Cow.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cow }
    end
  end

  # GET /kine/1/edit
  def edit
    @cow = Cow.find(params[:id])
  end

  # POST /kine
  # POST /kine.json
  def create
    @cow = Cow.new(params[:cow])

    respond_to do |format|
      if @cow.save
        format.html { redirect_to @cow, notice: 'Cow was successfully created.' }
        format.json { render json: @cow, status: :created, location: @cow }
      else
        format.html { render action: "new" }
        format.json { render json: @cow.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /kine/1
  # PUT /kine/1.json
  def update
    params[:cow][:treatment_ids] ||= []
    @cow = Cow.find(params[:id])

    respond_to do |format|
      if @cow.update_attributes(params[:cow])
        format.html { redirect_to @cow, notice: 'Cow was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @cow.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kine/1
  # DELETE /kine/1.json
  def destroy
    @cow = Cow.find(params[:id])
    @cow.destroy

    respond_to do |format|
      format.html { redirect_to kine_url }
      format.json { head :ok }
    end
  end
end
