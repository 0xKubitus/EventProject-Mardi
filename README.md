lien vers Heroku : https://eventproject-mardi-kubitus.herokuapp.com/

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

pour tester le programme, bien penser à:
-> bundle install
-> générer la BDD (rails db:create)
-> passer les migrations (rails db:migrate)
-> seeder le projet (rails db:seed)

AUSSI, A PRIORI IL FAUT RENOUVELER LA CLE API DE SENDGRID A CHAQUE ESSAI (est-ce du à la version gratuite ou c'est moi qui sait pas m'en servir ?!)

Process = créer une nouvelle clé sur SendGrid, puis la mettre dans le fichier .env, puis faire bundle install, puis faire:
 'heroku config:set SENDGRID_LOGIN=apikey SENDGRID_PWD=SG.sbborX6jQyuQyQW' (bcp plus long en vrai)
 
 (en remplacant SENDGRID_PWD par la nouvelle clé)
 
 ENSUITE, on peut retourner sur le site de SendGrid et "valider l'integration".
 Ils vont demander notre programme de sorte à ce qu'il envoie un mail auto et confirmer.
 			-> 'rails c' => User.create(email: "eventkubritus@yopmail.com", password: "aaaaaa")
 			
 ENFIN, vérifier sur SendGrid si c'est good et verifier aussi sur Yopmail.com
 
 
 
 
 
 
 
 _______________________________________________________________________________
 
 NOTES FOR MYSELF:
 
 j'ai fait le 1 (je pense correctement) et le 2 mais pas la 3 car je sais pas trop comment integrer les flashs mais j'aimerais bien savoir le faire !!!
 
 
 
 =>
 
 
 $ rails generate devise:install                                                                             
Running via Spring preloader in process 19200
      create  config/initializers/devise.rb
      create  config/locales/devise.en.yml
===============================================================================

Depending on your application's configuration some manual setup may be required:

  1. Ensure you have defined default url options in your environments files. Here
     is an example of default_url_options appropriate for a development environment
     in config/environments/development.rb:

       config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }

     In production, :host should be set to the actual host of your application.

     * Required for all applications. *

  2. Ensure you have defined root_url to *something* in your config/routes.rb.
     For example:

       root to: "home#index"
     
     * Not required for API-only Applications *

  3. Ensure you have flash messages in app/views/layouts/application.html.erb.
     For example:

       <p class="notice"><%= notice %></p>
       <p class="alert"><%= alert %></p>

     * Not required for API-only Applications *

  4. You can copy Devise views (for customization) to your app by running:

       rails g devise:views
       
     * Not required *

===============================================================================



