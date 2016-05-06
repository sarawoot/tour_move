class TourOperatorRegister < ActiveRecord::Base
  belongs_to :business_type
  mount_uploader :license_attachment, LicenseAttachmentUploader

  enum role_contact: [ :owner, :reservations, :finance, :marketing, :sales, :other ]
  enum status: [:disapprove, :approve]

  validates :contact_name, presence: true
  validates :role_contact, inclusion: { in: TourOperatorRegister.role_contacts.keys }
  validates :email, presence: true, email: true
  validates :company_name_en, presence: true
  validates :company_name_local, presence: true
  validates :business_type, presence: true
  validates :license_number, presence: true
end
