class ChildrenController < ApplicationController
  load_and_authorize_resource

  def index
    @children = Child.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @children }
    end
  end

  def show
    @child = Child.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @child }
    end
  end

  def new
    @child = Child.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @child }
    end
  end

  def edit
    @child = Child.find(params[:id])
  end

  def create
    @child = Child.new(params[:child])

    respond_to do |format|
      if @child.save
        format.html { redirect_to @child, notice: 'Child was successfully added.' }
        format.json { render json: @child, status: :created, location: @child }
      else
        format.html { render action: "new" }
        format.json { render json: @child.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @child = Child.find(params[:id])

    respond_to do |format|
      if @child.update_attributes(params[:child])
        format.html { redirect_to @child, notice: 'Child was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @child.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @child = Child.find(params[:id])
    @child.destroy

    respond_to do |format|
      format.html { redirect_to children_url }
      format.json { head :no_content }
    end
  end
end
