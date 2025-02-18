class Author 

    attr_accessor :name

    @@post_count = 0
    @@all = 3

    def initialize(name)
        @name = name
        @@post_count += 1
    end

    def posts
        Post.all.select {|post| post.author == self}
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(title)
        post = Post.new(title)
        post.author = self
        # post.title = post_title
        # @posts << post_title
        # post_title
    end

    def self.post_count
        @@all
    end

    def author_name
        @name
    end


end 