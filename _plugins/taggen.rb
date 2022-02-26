module TagGen
    class TagPageGenerator < Jekyll::Generator
        safe true

        def generate(site)
            site.tags.each do |tag, posts|
                site.pages << TagPage.new(site, tag, posts)
            end
        end
    end

    # custom method 
    class TagPage < Jekyll::Page
        def initialize(site, tag, posts)
            @site = site #site instance
            @base=site.source #path to the source dir
            @dir=tag

            @basename='index'
            @ext='.html'
            @name='index.html'

            puts('in tag page init')

            #pass in list of posts
            @data={
                'docs' => posts,
                'title' => tag
            }        
            
            data.default_proc=proc do |_, key|
                site.frontmatter_defaults.find(relative_path, :tags, key)
            end
        end

        #placeholders used in constructing page url
        def url_placeholders
            {
                :tag => @dir,
                :basename => basename,
                # :output_ext => output_ext,
            }
        end
    end 
end     
