class EmailController < ApplicationController  
  def index
    @emails = Email.all
  end

  def create
    @email = Email.new
    @email.object = Faker::Company.industry
    @email.body = Faker::ChuckNorris.fact
    @email.save
    if @email.save
      respond_to do |format|
        format.html { redirect_to email_index_path }
        format.js { }
      end
    else
      redirect_to root_path
    end
  end

  def show
    @email = Email.find(params[:id])
    @email.read = true
    @email.save
    respond_to do |format|
      format.html { }
      format.js { }
    end
  end

  def destroy
    @email = Email.find(params[:id])
    @email.destroy
    respond_to do |format|
      format.html { redirect_to email_index_path }
      format.js { }
    end
  end

  def update
    @email = Email.find(params[:id])
    if @email.read === true
      @email.read = false
    else
      @email.read = true
    end
    @email.save
    respond_to do |format|
      format.html { redirect_to email_index_path }
      format.js { }
    end
  end
end


