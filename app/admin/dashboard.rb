ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        span I18n.t("active_admin.dashboard_welcome.welcome")
        small I18n.t("active_admin.dashboard_welcome.call_to_action")
      end
    end

    columns do
      column do
        panel "Last added stocks" do
             ul do
               Stock.last(5).map do|stock|
                li link_to(stock.name, admin_stock_path(stock))
               end
              end
            end
          end

    column do
      panel "Users" do
        ul do
          li "Registered users:  #{User.count}"
          li "Registered admin: #{AdminUser.count}"
        end
      end
    end
    column do
      panel "Posts" do
        ul do
          li "Adeed new stocks: #{Stock.count}"
          li "Tracked stocks: #{UserStock.count}"
        end
      end
    end
  end

    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end

    panel "Gráfico" do
      render 'shared/chart'
    end
  end # content
end
