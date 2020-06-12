class Backup < ApplicationRecord
  def self.search(search)
    if search
      self.where("body LIKE ?", "%#{search}%")
    else 
      Backup.all
    end
  end
end
