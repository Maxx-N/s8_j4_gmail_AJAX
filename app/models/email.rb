class Email < ApplicationRecord
  before_create :default_values

  def default_values
    self.read = false
  end
end
