class Project < ApplicationRecord

  STATUSES = [['Propuesta', 'propuesta'], ['En progreso', 'en_progreso'], ['Terminado', 'terminado']]

  validates_presence_of :name, :description, :status
  validates_inclusion_of :status, in: ['propuesta', 'en_progreso', 'terminado']

  def get_status
    case status
    when 'propuesta'
      'Propuesta'
    when 'en_progreso'
      'En progreso'
    when 'terminado'
      'Terminado'
    end
  end

end
