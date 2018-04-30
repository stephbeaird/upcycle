def self.search(search)
  if search
    find(:all, :conditions => ['id LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end
