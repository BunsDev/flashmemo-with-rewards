require 'rails_helper'

RSpec.describe Question, type: :model do
  subject { create(:question) }

  describe 'validations' do
    it { is_expected.to validate_presence_of(:title) }
  end

  describe 'relations' do
    it { is_expected.to have_many(:options) }
    it { is_expected.to have_and_belong_to_many(:exams) }
  end
end
