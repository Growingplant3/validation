# class Event < ApplicationRecord
#   validate :start_datetime_cannot_be_later_than_end_datetime
  
#   private
#   def start_datetime_cannot_be_later_than_end_datetime
#     if start_datetime > end_datetime
#       errors.add(:start_datetime, "終了日時より後に設定できません")
#     end
#   end
# end

class Event < ActiveRecord::Base
  include ActiveModel::Validations
  validates_with EventValidator
end
