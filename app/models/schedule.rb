class Schedule < ApplicationRecord
    validates :title, presence: true, length: {maximum: 20}
    validates :start, presence: true
    validates :end_date, presence: true
    validates :memo, length: {maximum: 500}

    
    validate :date_cannot_be_in_the_past

    def date_cannot_be_in_the_past
        if self.start != nil && self.end_date != nil
        errors.add(:end_date, "の日付を正しく記入してください") unless
        self.start < self.end_date 
        end
    end
end
