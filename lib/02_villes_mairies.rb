require 'rubygems'
require 'nokogiri'
require 'open-uri'

#def capturemail(ville_entree)#capture l'adresse email de la commune d'Avernes
#url="http://www.annuaire-des-mairies.com/95/avernes.html"

#doc = Nokogiri::HTML(open(url))
#adresse = doc.css(".txt-primary")[3].text.split(" ")[2]
#puts adresse

#end

#capturemail


def captureurlmail #capture url des villes du 95
url2 = "http://www.annuaire-des-mairies.com/val-d-oise.html"
doc2 = Nokogiri::HTML(open(url2))
adresse2 = doc2.css('.lientxt')
noms = []
villes = []
emails = []
adresse2.each do |link|
	#noms.push(url2 + (link['href'][1..-1]))
	p="http://www.annuaire-des-mairies.com"	
	#puts link['href'][1..-1]
	p+=link['href'][1..-1]
	noms << p
	q=link['href'][1..-1]
	r=q.split('/')
	s=r[2]
	t=s.split('.')		
	ville=t[0]
	villes << ville	
end
noms.each do |adresse|
	doc3 = Nokogiri::HTML(open(adresse))
	adresse3 = doc3.css(".txt-primary")[3].text.split(" ")[2]
	if ['@'].include?(adresse3) == true
		emails << adresse3.to_s
	else
		emails << nil
	end
	
end

Hash[villes.zip(emails)].each do |ville,email|
	puts ville+" => "+email
#my_hash=Hash[villes.zip(emails)]
#return my_hash(ville_entree)
end
end
#puts noms
captureurlmail






