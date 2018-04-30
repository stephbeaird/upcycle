def self.search(search)
  where("order LIKE ?", "%#{search}%")
end