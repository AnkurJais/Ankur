class DocumentsController < ApplicationController
  
  def index
    @documents=Document.all
  end

  def new
    @documents = Document.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @document }
    end
  end

  def create
    @document= Document.new(params[:document])
    # @user = Name.new(name_params)
    respond_to do |format|
      if @document.save
        format.html { redirect_to @document, notice: 'User was successfully created.' }
        format.json { render json: @document, status: :created, location: @user }
      else
        format.html { render action: "new"}
        format.json { render json: @document.errors, status: :unprocessable_entity }
	    end
    end
  end
end