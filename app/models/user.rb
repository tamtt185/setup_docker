class User < ApplicationRecord
  after_update :update_is_sent_mail
  
  def update_is_sent_mail
    UserWorker.perform_in(1.seconds, self.id)
  end
end
