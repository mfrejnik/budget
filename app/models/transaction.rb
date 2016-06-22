class Transaction < ActiveRecord::Base
  monetize :price_cents
  enum category: {
    sport_hobby: 0,
    education: 1,
    transportation: 2,
    internet_phone: 3
  }
  enum classification: { income: 0, expense: 1 }
  enum :vendor {
    edeka: 0,
    rewe: 1,
    rossmann: 2
  }
end
