# frozen_string_literal: true

class HealthSnapshot < ApplicationRecord
  include ActiveRecord::Timestamp
  validates_presence_of :value, :unit, :source_name, :snapshot_type,
                        :start_date, :end_date
  validates_numericality_of :value, less_than: 500

  belongs_to :user
end
