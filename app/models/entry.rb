class Entry < ActiveRecord::Base
  belongs_to :author
  belongs_to :journal

  validates :name, presence: true
end
