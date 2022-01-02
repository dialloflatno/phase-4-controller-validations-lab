class Post < ApplicationRecord

    validates :title, presence: true
    validates :category , inclusion: { in: %W(Fiction or Non-Fiction)}
    validates :content, length: { minimum: 100 }
end
