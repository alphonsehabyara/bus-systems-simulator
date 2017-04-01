class Comment < ApplicationRecord
  belongs_to :company, optional: true
<<<<<<< HEAD
  belongs_to :user, optional: true
=======
  belongs_to :user
>>>>>>> ef272d45347ea5dad5430b6094ab5e156b76408a
end
