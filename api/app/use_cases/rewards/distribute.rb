# frozen_string_literal: true

module Rewards
  class Distribute
    def initialize(garden_id)
      @garden_id = garden_id
    end

    def earn(garden, seeds, _nutrients)
      garden.seeds += seeds
      garden.save!
    end
  end
end