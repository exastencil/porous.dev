class Documentation
  include Porous::Page
  include Porous::Component

  def route = '/documentation'
  def page_title = 'Porous • Documentation'
  def page_description = 'This page houses a collection of guides, instructions and tips on how to use the Porous web engine.'

  def render
    div class: 'text-slate-700 dark:text-slate-200' do
      component Header

      h2.text_3xl.leading_tight.font_medium.text_center.my_12 do
        text 'Porous is still a '
        span.font_bold.bg_gradient_to_br.from_cyan_400.to_yellow_600.bg_clip_text.text_transparent.box_decoration_clone do
          text 'work in progress'
        end
        text '.'
      end

      div.container.mx_auto.p_6 do
        h3.text_xl.underline.mb_3.mt_6 do
          text 'If you want to get an idea of the progress:'
        end
        p do
          text 'You could have a look at the '
          component Link, props: {
            href: 'https://github.com/exastencil/porous/blob/main/CHANGELOG.md',
            text: 'CHANGELOG'
          }
          text ' for completed and planned features or check on the progress of any feature in '
          component Link, props: { href: 'https://github.com/exastencil/porous/issues', text: 'the issue tracker' }
          text '. They will be updated as I progress.'
        end

        h3.text_xl.underline.mb_3.mt_6 do
          text 'If you understand the risks and want to try it out:'
        end
        p do
          text 'You could have a look at the '
          component Link, props: { href: 'https://github.com/exastencil/porous/blob/main/README.md', text: 'README' }
          text ' and then follow these steps to get started.'
        end

        ul.mt_6.list_disc do
          li do
            text 'Install the latest gem with '
            code 'gem install porous'
            text '.'
          end
          li 'Take note of the version since upgrading may break your application.'
          li do
            text 'Create a new project with '
            code 'porous new <project_name>'
            text '.'
          end
          li do
            text 'In the project directory add any pages you want into the '
            code 'pages'
            text ' directory and any components you need into the '
            code 'components'
            text ' directory.'
          end
          li do
            text 'Then run '
            code 'porous dev'
            text ' to start a server that will autoload your code and any subsequent changes and serve it on '
            code 'http://localhost:9292'
            text '.'
          end
          li 'You will have to restart the server on compilation errors and when you add files, so be careful.'
          li do
            text 'If you encounter problems you can log an issue on '
            component Link, props: { href: 'https://github.com/exastencil/porous/issues', text: 'the issue tracker' }
            text ', but itʼs not likely to be looked at until the API stabilises.'
          end
        end
      end

      component Footer
    end
  end
end
