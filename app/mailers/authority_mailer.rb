class AuthorityMailer < ApplicationMailer
  default from: 'from@example.com'
  layout 'mailer'

  def authority_mail(user, team)
    @user = user
    @team = team
    mail to: @user.email, subject: "チームのオーナー権限が付与されました"
  end

end
