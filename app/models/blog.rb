class Blog < ApplicationRecord
  validates :title, presence: true, on: :update
end
