class Header
  include Porous::Component

  def render
    header.top! class: 'container mx-auto p-6 flex justify-between' do
      a href: '/', class: 'text-4xl font-bold tracking-wide' do
        h1 do
          text 'porous'
          sup '🧽'
        end
      end
      nav.font_medium class: 'divide-x divide-gray-500/25 inline-flex items-center gap-4 text-lg' do
        ul do
          li do
            a href: '/documentation' do
              text 'Docs'
            end
          end
        end
        ul class: 'pl-3' do
          li do
            a href: 'https://github.com/exastencil/porous', rel: 'noopener noreferrer', target: '_blank',
              aria_label: 'GitHub repository' do
              img width: 24, height: 24, src: '/static/github.svg', alt: 'GitHub icon',
                  class: 'fill-slate-800 dark:fill-white'
            end
          end
        end
      end
    end
  end
end
