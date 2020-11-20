class Project 

    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        array = []
        ProjectBacker.all.map do |pb|
            if pb.project == self
                array << pb.backer
            end
        end
        array
    end

end