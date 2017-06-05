class Person
  include Mongoid::Document
  validates_presence_of :first_name, :last_name, :email, :btc_address, :ip_address
  validates :first_name, uniqueness: { scope: :last_name }
  field :first_name, type: String
  field :last_name, type: String
  field :email, type: String
  field :btc_address, type: String
  field :ip_address, type: String
end
