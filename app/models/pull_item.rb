class PullItem < ActiveRecord::Base
  unloadable

  belongs_to :pull
  belongs_to :user
  
  named_scope :with_status, lambda { |pull_id, status|
    { :conditions => { :pull_id => pull_id, :item_type => status } }
  }  
  
end