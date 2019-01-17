require_relative '../lib/deputes'

describe "the capturemail function" do

it "should output the email address of a member of parliament given the first name and family name" do

expect(capturemail("aude","amadou")).to eq("permanence@audeamadou.fr")
expect(capturemail("francois","andre")).to eq("francois.andre@assemble-nationale.fr")
end

#require 'rubygems'
#require 'nokogiri'
#require 'open-uri'

#def capturemail
#url_entier="https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&debut_deputes="+pagination+"#pagination_deputes"
#doc=Nokogiri::HTML




#https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&debut_deputes=10#pagination_deputes
