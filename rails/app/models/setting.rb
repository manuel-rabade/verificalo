class Setting < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  validates :setting, presence: true
  validates_inclusion_of :setting, in: %w(VERIFICACION_BEFORE VERIFICACION_DURING VERIFICACION_AFTER
                                          ADEUDOS_NEW ADEUDOS_AFTER NO_CIRCULA_WEEKDAY NO_CIRCULA_WEEKEND)
end
