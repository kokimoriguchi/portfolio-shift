class EmployerSkill < ApplicationRecord
  belongs_to :employer
  belongs_to :skill
end
