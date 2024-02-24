class Footer
  include Porous::Component

  def render
    footer.container.mx_auto.p_6.flex.flex_col_reverse.gap_8.justify_between.text_slate_500.border_t class: 'sm:flex-row' do
      section.flex.flex_col.gap_6 do
        span.text_2xl '🧽 porous.dev'
        p do
          text 'Designed and developed by '
          a href: 'https://github.com/exastencil', class: 'transition-colors text-gray-700 hover:text-cyan-600' do
            text 'Michael Prins'
          end
          text '.'
        end
        ul.inline_flex.gap_4 do
          li do
            a href: 'https://github.com/exastencil/porous', target: '_blank' do
              img width: 24, height: 24, src: '/static/github.svg', alt: 'GitHub'
            end
          end
          li do
            a href: 'https://rubygems.org/gems/porous', target: '_blank' do
              img width: 24, height: 24, src: '/static/rubygems.svg', alt: 'RubyGems'
            end
          end
        end
      end
      nav class: 'text-slate-700 dark:text-slate-200 sm:text-right' do
        div.text_gray_500.mb_1 'Navigation'
        ul.flex.flex_col.gap_2 do
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
