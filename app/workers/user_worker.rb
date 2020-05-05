class UserWorker
  include Sidekiq::Worker
  def perform(user_id)
    user =  User.find_by id: user_id
    user.update is_sent_mail: 1
  end
end
