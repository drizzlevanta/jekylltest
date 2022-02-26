module Buildtime
    class Generator < Jekyll::Generator
        safe true
        def generate(site)
            indexPage=site.pages.find{|page|page.name=='index.html'}
            indexPage.data['buildtime']='plugins'
        end
    end
end
