class AgendaMailer < ApplicationMailer
    default from: 'from@example.com'
    layout 'mailer'

    def agenda_mail(agenda)
        @agenda = agenda
        @emails = agenda.team.members.pluck(:email)
            mail to: @emails, subject: "アジェンダが削除されました"
    end

end
