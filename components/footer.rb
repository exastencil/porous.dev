class Footer
  include Porous::Component

  def render
    footer class: 'container mx-auto p-6 flex flex-col-reverse gap-8 justify-between text-slate-500 border-t border-slate-500 sm:flex-row' do
      section class: 'flex flex-col gap-6' do
        span(class: 'text-2xl') { '🧽 porous.dev' }
        p do
          text 'Designed and developed by '
          a href: 'https://github.com/exastencil', class: 'transition-colors text-gray-700 hover:text-cyan-600' do
            text 'Michael Prins'
          end
          text '.'
        end
        ul class: 'inline-flex gap-4' do
          li do
            a href: 'https://github.com/exastencil/porous', target: '_blank' do
              img width: 24, height: 24, src: '/github.svg', alt: 'GitHub'
            end
          end
          li do
            a href: 'https://rubygems.org/gems/porous', target: '_blank' do
              img width: 24, height: 24, src: '/rubygems.svg', alt: 'RubyGems'
            end
          end
        end
      end
      nav class: 'text-slate-700 dark:text-slate-200 sm:text-right' do
        div(class: 'text-gray-500 mb-1') { 'Navigation' }
        ul class: 'flex flex-col gap-2' do
          {
            'https://github.com/exastencil/porous.dev' => 'View the source',
          }.each do |href, link_text|
            li do
              a(href: href) { link_text }
            end
          end
        end
      end
    end
  end
end
