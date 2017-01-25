class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:facebook]

#Manager
has_many :jobs, foreign_key: "manager_id"
has_many :applied, :through => :jobs, :class_name => "Application"

#Applicant
has_many :applications, :foreign_key => "applicant_id"
has_many :job_notes, through: :applications
has_many :job_notes


   def self.from_omniauth(auth)
     where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
       user.email = auth.info.email
       user.password = Devise.friendly_token[0,20]
     end
   end

end

