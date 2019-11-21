class Email < ApplicationRecord
  before_save :default_values

  def default_values
    self.read = false
  end
end
