class Trip < ApplicationRecord
  has_many :trails

  def total_length
    trails.sum(:length)
  end
end
