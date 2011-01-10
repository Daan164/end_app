User.delete_all
Aanwezigheden.create(:student_name => 'Daan Mouha',
           		   :aanwezig => 'ja',
			   :vak => 'Web 3.0',
			   :datum => '2011-01-10')
Aanwezigheden.create(:student_name => 'Daan Mouha',
           		   :aanwezig => 'nee',
			   :vak => 'Netwerken',
			   :datum => '2011-01-01')