module ToDropdown
  extend ActiveSupport::Concern

  def to_option
    [name, id]
  end

  module ClassMethods
    def to_dropdown
      all.order(:name).map(&:to_option)
    end
  end
end