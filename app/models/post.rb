class Post < ApplicationRecord

    validates :title , :start , :end , presence: true
    validates :end, comparison: { greater_than: :start}
    validates :title, length: { maximum: 20 }
    validates :memo, length: { maximum: 500}



end
