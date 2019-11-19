require "csv"

task :import_sites => :environment do
    CSV.foreach("lib/data/sites.csv", headers: true) do |line|
        site = Site.create(reference: line["reference_site"],
                name: line["nom"],
                address: line["address_line1"],
                zipcode: line["zipcode"],
                city: line["city"])

        if site.valid?
            site.save
        else
            puts "Error while creating site with reference : #{line["reference_site"]}"
        end
    end
end 
