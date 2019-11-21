class EmailController < ApplicationController  
  def index
    @emails = Email.all
  end

  def create
    Email.create(
      object: Faker::Company.unique.industry,
      body: Faker::ChuckNorris.unique.fact
    )
  end
end
