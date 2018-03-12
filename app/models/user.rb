# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :health_snapshots
  has_one :user_profile, dependent: :destroy
  accepts_nested_attributes_for :user_profile
end
