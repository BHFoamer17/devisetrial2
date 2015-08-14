class AddServiceProviderIdToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :service_provider_id, :integer
  end
end
