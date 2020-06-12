class Backup < ApplicationRecord
  def self.search(search)
    if search
      where('body LIKE ?', "%#{search}%")
    else
      Backup.all
    end
  end
end
