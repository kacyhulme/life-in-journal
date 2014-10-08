class Journal < ActiveRecord::Base
  belongs_to :author
  has_many :entries

  validates :journal_title, presence: true
end
