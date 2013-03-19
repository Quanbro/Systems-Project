class ProgramsController < ApplicationController
  before_filter :get_child

  def get_child
    @child = Child.find(params[:child_id])
  end 

  def add
    # @program = Program.find(params[:id])
    @program = Program.find_by_child_id(params[:child_id])
    @program.update_attributes(:child_id => @child.id)
    respond_to do |format|
      if @program.update_attributes(params[:program])
        format.html { redirect_to child_programs_path(@child), notice: 'Program was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @program.errors, status: :unprocessable_entity }
      end
    end
  end

  # GET /programs
  # GET /programs.json
  def index
    #@programs = Program.all
    @programs = Program.find_all_by_child_id(params[:child_id])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @programs }
    end
  end

  # GET /programs/1
  # GET /programs/1.json
  def show
    @program = Program.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @program }
    end
  end

  # GET /programs/new
  # GET /programs/new.json
  def new
    @program = Program.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @program }
    end
  end

  # GET /programs/1/edit
  def edit
    @program = Program.find(params[:id])
  end

  # POST /programs
  # POST /programs.json
  def create
    @program = Program.new(params[:program])
    @program.update_attributes(:child_id => @child.id)
    respond_to do |format|
      if @program.save
        format.html { redirect_to [@child, @program], notice: 'Program was successfully created.' }
        format.json { render json: @program, status: :created, location: @program }
      else
        format.html { render action: "new" }
        format.json { render json: @program.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /programs/1
  # PUT /programs/1.json
  def update
    @program = Program.find(params[:id])

    respond_to do |format|
      if @program.update_attributes(params[:program])
        format.html { redirect_to [@child, @program], notice: 'Program was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @program.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /programs/1
  # DELETE /programs/1.json
  def destroy
    @program = Program.find(params[:id])
    @program.destroy

    respond_to do |format|
      #Change default redirect url after destroying a program 
      #format.html { redirect_to programs_url }
      format.html { redirect_to child_programs_url }
      format.json { head :no_content }
    end
  end


  def search
    if params[search_path]
      @programs = Program.search(params[search_path][:filter])
    else 
      @programs = Program.search(params[:filter])
    end 
  end 
    
end
