class Job < ApplicationRecord

#Manager
belongs_to :manager, :class_name => "User"
has_many :applications

#Applicant
has_many :applicants, through: :applications, :class_name => "User"
has_many :job_notes, through: :applications
belongs_to :job_note, optional: true

blah
  def set_manager_as_manager
    unless manager.is_manager?
      manager.update(is_manager: true)
    end
  end

end