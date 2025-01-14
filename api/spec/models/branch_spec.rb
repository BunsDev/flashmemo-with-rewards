# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Branch, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:tree) }
  end

  describe 'relations' do
    it { is_expected.to belong_to(:tree) }
  end
end
