class Property < ApplicationRecord
  has_many :nearly_stations, dependent: :destroy
  accepts_nested_attributes_for :nearly_stations, allow_destroy: true

  def has_many_limit
    errors.add(:base, "#{Constants::WITH_MAX}件以上は登録できません") if property.nearly_stations.count >= Constants::WITH_MAX
  end
end
