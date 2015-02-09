class DocumentsController < ApplicationController
  
  def index
    @documents=Document.all
  end

  def new
    @document = Document.new

    2.times{@document.addresses.build}
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @document }
    end
  end

  def create
    @document = Document.new(params[:document])
    @document.save
    # @user = Name.new(name_params)
    respond_to do |format|
      if @document.save
        format.html { redirect_to :back, notice: 'User was successfully created.' }
        format.json { render json: @document, status: :created, location: @user }
      else
        format.html { render action: "new"}
        format.json { render json: @document.errors, status: :unprocessable_entity }
	    end
    end
  end
end