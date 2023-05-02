class Property < ApplicationRecord
  has_many :nearly_stations, dependent: :destroy
  validate :has_many_limit
  accepts_nested_attributes_for :nearly_stations, reject_if: :reject_nearly_station, allow_destroy: true

  def has_many_limit
    if nearly_stations.count > Constants::WITH_MAX
      errors.add(:base, "#{Constants::WITH_MAX}件以上は登録できません") 
    end
  end

  def reject_nearly_station(attributes)
    exists = attributes[:id].present?
    empty = attributes[:station_name].blank?
    attributes.merge!(_destroy: 1) if exists && empty
    !exists && empty
  end
end
