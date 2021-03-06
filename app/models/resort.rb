class Resort < ApplicationRecord
    has_many :reviews

    #set the slug for the resort before we add it to our database
    before_create :slugify

    def slugify
        self.slug = name.parameterize
    end

    def avg_score
        reviews.average(:score).round(2).to_f
    end
end

# SLUGIFY METHOD add a method for when we create a new resort we'll take the name of that resort and we'll sligify it and then set that as the slug value before we then save that new resort in our database. It takes the resort name and converts it into a lower case hyphen name and sets is as a slug value

# AVD_SCORE is getting the average score of the review rounded up and converted to a float