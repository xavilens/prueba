class Abc < ActiveRecord::Base
  validates_presence_of :a_id, :b_id
  validates :c_id, presence: true, uniqueness: {scope: [:a_id, :b_id]}

  belongs_to :a
  belongs_to :b
  belongs_to :c
end
