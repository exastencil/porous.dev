# frozen_string_literal: true

# The navigation footer at the bottom of every page
class Footer < Porous::Component
  def content
    footer class: 'container mx-auto p-6 flex flex-col-reverse gap-8 justify-between text-slate-500 border-t border-slate-500 sm:flex-row' do
      section class: 'flex flex-col gap-6' do
        span '🧽 porous.dev', class: 'text-2xl'
        p do
          text 'Designed and developed by '
          a 'Michael Prins', href: 'https://github.com/exastencil', class: 'transition-colors text-gray-700 hover:text-cyan-600'
          text '.'
        end
        ul class: 'inline-flex gap-4' do
          li do
            a href: 'https://github.com/exastencil/porous', class: 'fill-current', target: '_blank' do
              component Github, size: 24
            end
          end
          li do
            a href: 'https://rubygems.org/gems/porous', target: '_blank' do
              component Rubygems, size: 24
            end
          end
        end
      end
      nav class: 'text-slate-700 dark:text-slate-200 sm:text-right' do
        div 'Navigation', class: 'text-gray-500 mb-1'
        ul class: 'flex flex-col gap-2' do
          {
            'https://github.com/exastencil/porous.dev' => 'View the source'
          }.each do |dest, link_text|
            li do
              a link_text, href: dest
            end
          end
        end
      end
    end
  end
end
