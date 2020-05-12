class Participation < ApplicationRecord
  after_create :new_participant_send
  belongs_to :user
  belongs_to :event

  def new_participant_send
    UserMailer.new_participant_email(self.event.admin).deliver_now
  end
end
