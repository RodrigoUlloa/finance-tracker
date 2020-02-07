ActiveAdmin.register Stock do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :ticker, :name, :last_price
  #
  # or
  #
  # permit_params do
  #   permitted = [:ticker, :name, :last_price]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  index do
    column :id
    column :name
    column :last_price
    actions
  end

    form do |f|
      inputs 'Agregar un nuevo Post' do
        input :name
        input :last_price
      end
      actions
    end

  filter :created_at, as: :date_range
  permit_params :name, :last_price
end
