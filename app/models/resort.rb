class Resort < ApplicationRecord
    has_many :reviews

    #set the slug for the resort before we add it to our database
    before_create :slugify

    def sligify
        self.slug = name.parameterize
    end
end

# add a method for when we create a new resort we'll take the name of that resort and we'll sligify it and then set that as the slug value before we then save that new resort in our database. It takes the resort name and converts it into a lower case hyphen name and sets is as a slug value