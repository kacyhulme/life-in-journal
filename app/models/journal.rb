class Journal < ActiveRecord::Base
  belongs_to :user
  has_many :entries

  validates :journal_title, presence: true 
end
