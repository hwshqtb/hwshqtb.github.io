module Jekyll
  class TagsPage < Page
    def initialize(site, base, dir, tag)
      @site = site
      @base = base
      @dir = dir
      @name = tag + '.html'
      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), 'tags-page.html')
      self.data['tag'] = tag
      self.data['title'] = "拥有#{tag} tag的文章"
    end
  end

  class TagGenerator < Generator
    safe true
    def generate(site)
      if site.layouts.key? 'tags-page'
        site.tags.keys.each do |tag|
          write_tag_index(site, 'tags', tag)
        end
      end
    end
    def write_tag_index(site, dir, tag)
      index = TagsPage.new(site, site.source, dir, tag)
      index.render(site.layouts, site.site_payload)
      index.write(site.dest)
      site.pages << index
    end
  end

end
