class Student < ApplicationRecord

  def to_s
    "#{first_name} #{last_name}"
  end

  
  # def self.by_name(name)
  #   Student.where("first_name LIKE ? OR last_name LIKE ?", "%#{name}%", "%#{name}%")
  # end
  def self.by_name(name)
    Student.where(first_name:"#{name[0]}")
  end

end
