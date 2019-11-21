class EmailController < ApplicationController  
  def index
    @emails = Email.all
  end

  def create
    @email = Email.new
    @email.id = Email.last.id + 1
    @email.object = Faker::Company.unique.industry
    @email.body = Faker::ChuckNorris.unique.fact
    @email.save
    if @email.save
      respond_to do |format|
        format.html { redirect_to email_index_path }
        format.js { }
      end
      flash[:notice] = "Email créé"
    else
      redirect_to root_path
      flash[:notice] = "Essaye encore ..."
    end
  end

  def show
    @email = Email.find(params[:id])

    respond_to do |format|
      format.html { }
      format.js { }
    end

  end
end


