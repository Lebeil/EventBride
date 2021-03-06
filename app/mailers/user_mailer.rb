class UserMailer < ApplicationMailer

  def welcome_email(user)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @user = user

    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url  = 'https://event75-bride-rails.herokuapp.com/'

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @user.email, subject: 'Bienvenue chez nous !')
  end

  def new_participant_email(user)
    @user = user

    @url  = 'http://crazyeventbrite.herokuapp.com/'

    mail(to: @user.email, subject: 'Un nouveau participant a ton évènement !')
  end

end
