class AgendaMailer < ApplicationMailer
    default from: 'from@example.com'
    layout 'mailer'

    def agenda_mail(users,agenda)
        @users = users
        @agenda = agenda
        @users.each do |user|
            mail to: user.email, subject: "アジェンダが削除されました"
        end
    end

end
