module Statusable
  extend ActiveSupport::Concern

  included do
    scope :active, -> { where(active: true) }
    scope :inactive, -> { where(active: false) }
  end

  def activate!
    update(active: true)
  end

  def deactivate!
    update(active: false)
  end
end