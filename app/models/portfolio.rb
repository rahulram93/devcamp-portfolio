class Portfolio < ApplicationRecord
  include Placeholder

  has_many :technologies
  accepts_nested_attributes_for :technologies, 
    reject_if: lambda { |attrs| attrs['name'].blank? }

  validates_presence_of :title, :body, :main_image, :thumb_image

  scope :ruby_on_rails, -> { where(:subtitle => "ruby on rails") }

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= Placeholder.image_generator(600,400)
    self.thumb_image ||= Placeholder.image_generator(350,200)
  end
end
