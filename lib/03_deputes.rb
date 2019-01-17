require 'rubygems'
require 'nokogiri'
require 'open-uri'

def capturemail
pagination = 10
email=[]
noms=[]
while pagination != 580 do
	pagination = pagination.to_s
	url_entier="https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&debut_deputes="+pagination+"#pagination_deputes"
	doc = Nokogiri::HTML(open(url_entier))
	adresse=doc.css("a[class='ann_mail']").text

	#adresse1=adress.split(":")	
	prenom = doc.css("h2[class='titre_normal']").text
	#nom = doc.css("title_normal").split(" ")[2]	
	#if ["@"].include?(adresse) == true	
	#	puts adresse#, prenom #nom
	#end
	#puts prenom 
	#puts prenom
	adresse1=adresse.split(" ")
	#puts adresse1
	
	prenom1=prenom.split(" ")
	adresse1.each do |adresse2|
		if ['.'].include?(adresse2) == true
			#email<<adresse2
			puts adresse2
		end
	end
	noms1=[]
	prenom1.each do |prenom2|
		
		if prenom2.capitalize == prenom2 
			
			noms1<<prenom2
			
			
			
		end
	end
	#noms<<noms1
	#puts noms1			
	#puts prenom1
			
	pagination = pagination.to_i
	pagination+=10
end

end

capturemail
