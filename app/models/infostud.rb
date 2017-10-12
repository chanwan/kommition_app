class Infostud < ApplicationRecord
	belongs_to :user

	has_attached_file :ort, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :ort, content_type: /\Aimage\/.*\z/

	has_attached_file :passport, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :passport, content_type: /\Aimage\/.*\z/
end
