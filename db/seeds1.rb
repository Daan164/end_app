User.delete_all
User.create(:first_name => 'Ludo',
            :last_name => 'Sauvillers',
            :email => 'lsauvill@khlim.be',
            :password => 'autobus')
User.create(:first_name => 'Jan',
            :last_name => 'Elsen',
            :email => 'jan.elsen@khlim.be',
            :password => 'trein') 
User.create(:first_name => 'Marc',
            :last_name => 'Wauters',
            :email => 'marc.wauters@khlim.be',
            :password => 'ibzezj')                      
User.create(:first_name => 'Stefan',
            :last_name => 'Segers',
            :email => 'stefan.segers@khlim.be',
            :password => 'treintrambus')