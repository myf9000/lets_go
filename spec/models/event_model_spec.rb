require 'rails_helper'

RSpec.describe Event, type: :model do
  it { is_expected.to have_db_column(:name).of_type(:string) }
  it { is_expected.to have_db_column(:place).of_type(:string) }
  it { is_expected.to have_db_column(:description).of_type(:text) }
  # it { is_expected.to have_db_column(:city).of_type(:string) }
  it { is_expected.to have_db_column(:max_members).of_type(:integer) }
  it { is_expected.to have_db_column(:min_members).of_type(:integer) }
  # it { is_expected.to have_db_column(:data_of).of_type(:datetime) }

  # it { is_expected.to have_many(:users).through(:user_events) }
  # it { is_expected.to have_many(:user_events) }
  # it { is_expected.to belong_to(:user) }
end
