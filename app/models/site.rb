class Site < ActiveRecord::Base
    has_many :parts, dependent: :destroy

    validates_presence_of :reference
    validates_uniqueness_of :reference
end
