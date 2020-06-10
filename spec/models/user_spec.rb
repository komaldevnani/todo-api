require 'rails_helper'

RSpec.describe User, type: :model do
  #Association test
  # Ensure user model has 1:m relationship with todo model
  it { should have_many(:todos) }

  #Valodation test
  # ensure name, email, password present before save
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password_digest) }

end
