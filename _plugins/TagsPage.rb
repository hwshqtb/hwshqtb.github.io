module Jekyll
    class TagsPage < Page
      def initialize(site, base, dir, tag)
        @site = site
        @base = base
        @dir = dir
        @name = 'index.html'
        self.process(@name)
        self.read_yaml(File.join(base, '_layouts'), 'tags-page.html')
        self.data['tag'] = tag
        self.data['title'] = "拥有#{tag}tag的文章/页面"
      end
    end
    class TagGenerator < Generator
      safe true
      def generate(site)
        if site.layouts.key? 'tags-page'
        // 如果你用的模板名称不是"tagpage.html"的话, 记得修改这里的名字
          dir = site.config['tags_pages'] || 'tag'
          // 如果你想要自己定义tag单页存储的路径, 或者说是访问路径中的tag前缀, 可以在config里面设定 tag_dir 的值, 或者是直接改这里也行~
          site.tags.keys.each do |tag|
            write_tag_index(site, File.join(dir, tag), tag)
          end
        end
      end
      def write_tag_index(site, dir, tag)
        index = TagIndex.new(site, site.source, dir, tag)
        index.render(site.layouts, site.site_payload)
        index.write(site.dest)
        site.pages << index
      end
    end
  
  end