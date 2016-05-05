class Event < ActiveRecord::Base
  validate :proper_amount_members
  validate :greater_than_zero

  private

  def proper_amount_members
    return unless max_members && min_members
    errors.add(:max_members, 'Max must be greater than min') if min_members > max_members
  end

  def greater_than_zero
    return if max_members > 0 || min_members > 0
    errors.add(:max_members, 'Max must be greater than 0') if max_members <= 0
    errors.add(:min_members, 'Min must be greater than 0') if min_members <= 0
  end
end
