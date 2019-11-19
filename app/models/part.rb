class Part < ActiveRecord::Base
    belongs_to :site

    validates_presence_of :reference
    validates_uniqueness_of :reference

    def site_reference
        if site
            site.reference
        end
    end
end
