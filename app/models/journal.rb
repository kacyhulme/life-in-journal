class Journal < ActiveRecord::Base
  belongs_to :author
  has_many :entries
end
