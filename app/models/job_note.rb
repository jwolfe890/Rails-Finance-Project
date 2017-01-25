class JobNote < ApplicationRecord

belongs_to :user
belongs_to :application
has_one :job

end