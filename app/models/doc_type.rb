class DocType < ActiveRecord::Base
  include ToDropdown
  has_many :documents

  auto_strip_attributes :name, squish: true
  auto_strip_attributes :name, nullify: true

  validates :name, presence: true
  validates :name, uniqueness: true
end
