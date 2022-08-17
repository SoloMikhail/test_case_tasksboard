class Project < ApplicationRecord
  has_many :jobs , dependent: :destroy

  validates :name, presence: true, length: {minimum:2};
  validates :summary, presence: true, length: {minimum:5, maximum:1000 };
  validates :start_date, presence: true, date: true;
  validates :due_date, presence: true, date: true

  def formated_created_at
    created_at.strftime ("%d-%m-%Y %H:%M:%S")
  end
end
