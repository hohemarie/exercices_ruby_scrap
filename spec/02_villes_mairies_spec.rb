require_relative '../lib/02_villes_mairies'

describe "the captureurlmail method" do 
it "should return the email address corresponding to the named city" do
expect(captureurlmail("cherence")).to eq("mairie.cherence@wanadoo.fr")
expect(captureurlmail("cergy")).to eq("contact@ville-cergy.fr")
expect(captureurlmail("avernes")).to eq("mairie.avernes@orange.fr")
end
