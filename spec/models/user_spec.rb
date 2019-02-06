RSpec.describe User, type: :model do
  it { is_expected.to be }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password) }
end
