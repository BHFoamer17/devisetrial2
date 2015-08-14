class Review < ActiveRecord::Base

  belongs_to :service_provider
  belongs_to :customer

end
