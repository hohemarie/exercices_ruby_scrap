require 'rubygems'
require 'nokogiri'   
require 'open-uri'

# definition d'une fonction 
def capture	
	puts "veuillez patienter..."
	url = "https://coinmarketcap.com/all/views/all/"
	prix = [] # on fait un tableau des prix
	noms = [] # on fait un tableau des noms
	pages = Nokogiri::HTML(open(url))

	devises = pages.css (".currency-name-container") # en inspectant les elements on recupere nom de la classe
	price = pages.css(".price") # on recupere le prix
	price.each  do |price| #on cree l'iteration sur les captures de prix
	usd =  price['data-usd'] #on enleve le signe dollar
	prix << usd
	end
	devises.each do |cur|  
		nomdev = cur.text	
		noms << nomdev   #incrementation de chaque enregistrement a la fin de mon tableau 
	
		end
pri=[]
prix.each do |val|
	v=val.split(".")
	w=v[1].to_s
	if w.length > 2 
		w=w[0..1]
	elsif w.length <= 2
		w=w
	end
	x=""
	x+=v[0].to_s
	x+="."
	x+=w
	pri << x
end
Hash[noms.zip(pri)].each do |key,value|#j'associe les differents champs du tableau
	puts key+" => "+value
end 

end
capture
