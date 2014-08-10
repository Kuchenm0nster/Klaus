class Professor < ActiveRecord::Base
  include ToDropdown
  has_many :documents

  auto_strip_attributes :first_name, squish: true
  auto_strip_attributes :first_name, nullify: true
  auto_strip_attributes :last_name, squish: true
  auto_strip_attributes :last_name, nullify: true

  validates :first_name, presence: true
  validates :last_name, presence: true

  def name_last_first
    "#{self.last_name}, #{self.first_name}"
  end

  def name_first_name
    "#{self.first_name} #{self.last_name}"
  end

  def to_option
    [name_last_first, id]
  end

  def self.to_dropdown
    all.order(:last_name, :first_name).map(&:to_option)
  end
end
