class Job < ApplicationRecord
  belongs_to :project

  validates :title, presence: true, length: {minimum:2};
  validates :content, presence: true, length: {minimum:5, maximum:1000 };
  validates :status, presence: true, length: {minimum:1};
  validates :start_date, presence: true, date: true;
  validates :due_date, presence: true, date: true;
  validates :estimation,
    numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 100,
    message: "Can only be number between 1 and 100." }

  def formated_created_at
    created_at.strftime ("%d-%m-%Y %H:%M:%S")
  end
end
