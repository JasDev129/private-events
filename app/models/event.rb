class Event < ApplicationRecord
    belongs_to :user

    scope :past, -> {where("date < ?", Time.now).order("date")}
    scope :upcomming, -> {where("date < ?", Time.now).order("date")}

    validates :name, :location, :description, presence: true

end
