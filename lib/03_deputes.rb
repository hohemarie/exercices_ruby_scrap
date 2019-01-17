require 'rubygems'
require 'nokogiri'
require 'open-uri'

def capturemail
pagination = 10
while pagination != 570 do
	url_entier="https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&debut_deputes="+pagination+"#pagination_deputes"
	doc = Nokogiri::HTML(open(url_entier))
	adresse=doc.css("ann_mail")[0]
	prenom = doc.css("title_normal").split(" ")[1]
	nom = doc.css("title_normal").split(" ")[2]	
	puts adresse, prenom, nom
end
end
