class Entry < ActiveRecord::Base
  belongs_to :author
  belongs_to :journal

  acts_as_taggable
end
