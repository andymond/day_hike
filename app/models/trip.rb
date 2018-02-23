class Trip < ApplicationRecord
  has_many :trails

  def total_trail_length
    trails.sum(:length)
  end

  def avg_trail_length
    trails.sum(:length)
  end

  def longest_trail
    trails.maximum(:length)
  end

  def shortest_trail
    trails.minimum(:length)
  end
end
