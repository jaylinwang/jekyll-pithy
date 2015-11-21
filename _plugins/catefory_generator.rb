module Jekyll
  class CategoryPage < Page
    def initialize(site, base, dir, category)
      @site = site
      @base = base
      @dir = dir
      @name = 'index.html'
      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), 'category.html')
      self.data['category'] = category
    end
  end

  class CategoryPageGenerator < Generator
    safe true

    def generate(site)
      if site.layouts.key? 'category'
            dir = 'categories'
            site.categories.each do |category|
            site.pages << CategoryPage.new(site, site.source, File.join(dir, category.first), category)
        end
      end
    end
  end

end
