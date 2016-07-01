class Event < ActiveRecord::Base
  validates :name, :place, presence: true
  # validate :proper_amount_members

  private

  def proper_amount_members
    return true if (max_members > min_members) || (!max_members || !min_members)
    errors.add(:max_members, 'Max must be greater than min')
  end
end
