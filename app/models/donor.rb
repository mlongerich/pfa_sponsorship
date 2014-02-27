class Donor < ActiveRecord::Base
  has_many :sponsorships
  has_many :children, through: :sponsorships
  has_many :sponsorship_types, through: :sponsorships

  validates :state, format: { with: /\A(?:(A[KLRZ]|C[AOT]|D[CE]|FL|GA|HI|I[ADLN]|K[SY]|LA|M[ADEINOST]|N[CDEHJMVY]|O[HKR]|P[AR]|RI|S[CD]|T[NX]|UT|V[AIT]|W[AIVY]))\z/, message: "State abreviations only"} 
  validates :email, format: { with: /\A[0-9a-zA-Z]+([0-9a-zA-Z]*[-._+])*[0-9a-zA-Z]+@[0-9a-zA-Z]+([-.][0-9a-zA-Z]+)*([0-9a-zA-Z]*[.])[a-zA-Z]{2,6}\z/, message: "Not a valid email address"}
  validates :name, :email, presence:true
  validates :email, uniqueness:true

end
