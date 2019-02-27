class Article
    @@all=[]
    attr_reader :author, :magazine
    attr_accessor :title

    def initialize (author, magazine)
        @author=author
        @magazine=magazine
        @title=nil
        @@all.push(self)
    end

    def self.all
        @@all
    end


end
