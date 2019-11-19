require "csv"

task :import_parts => :environment do
    CSV.foreach("lib/data/parts.csv", headers: true) do |line|
        site = Site.find_by_reference line["reference_site"]
        
        if site.nil?
            puts "Error while creating part with reference : #{line["reference_part"]}, site with reference : #{line["reference_site"]} doesn't exist."
            next
        end 

        part = Part.create(reference: line["reference_part"],
                site_id: site.id,
                type_designation: line["part_type_designation"])

        if part.valid?
            part.save
        else
            puts "Error while creating part with reference : #{line["reference_part"]}"
        end
    end
end 
