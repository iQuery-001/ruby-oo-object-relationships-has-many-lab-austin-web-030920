class Author
    attr_accessor :name
    def initialize(name)
        @name = name
    end

    def posts
        Post.all.select {|post| post.author == self}
        # binding.pry
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(title)
        post = Post.new(title)
        post.author = self
    end

    def self.post_count
        Post.all.select {|post| post.author}.count
    end
end