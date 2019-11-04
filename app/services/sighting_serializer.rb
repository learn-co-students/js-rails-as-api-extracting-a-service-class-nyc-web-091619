class SightingSerializer

    def initialize(sighting_object)
        @sighting = sighting_object
    end

    # a method that will call to_json on this instance variable, handling the inclusion and exclusion of attributes, and return the results
    # def to_serialized_json
    #     @sighting.to_json(:include => {
    #       :bird => {:only => [:name, :species]},
    #       :location => {:only => [:latitude, :longitude]}
    #     }, :except => [:updated_at])
    # end


    def to_serialized_json
        options = {
          include: {
            bird: {
              only: [:name, :species]
            },
            location: {
              only: [:latitude, :longitude]
            }
          },
          except: [:updated_at],
        }
        @sighting.to_json(options)
    end
end