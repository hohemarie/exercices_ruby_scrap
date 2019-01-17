require 'rubygems'
require 'nokogiri'
require 'open-uri'

def capturemail
pagination = 10
while pagination != 570 do
	pagination = pagination.to_s
	url_entier="https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&debut_deputes="+pagination+"#pagination_deputes"
	doc = Nokogiri::HTML(open(url_entier))
	adresse=doc.css("a[class='ann_mail']").text

	#adresse1=adress.split(":")	
	prenom = doc.css("h2[class='titre_normal']")
	#nom = doc.css("title_normal").split(" ")[2]	
	puts adresse#, prenom #nom
	puts prenom
	pagination = pagination.to_i
	pagination+=10
end
end

capturemail
