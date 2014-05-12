ActiveAdmin.register Show do


  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end

  member_action :create, method: 'post' do
     pullFromDb = Functions.new
     pullFromDb.AddOrUpdate(params[:show][:name])
     redirect_to action: :index
  end

  form :html => { :enctype => "multipart/form-data" } do |f|
      f.inputs "Show" do
        f.input :name
      end
        f.actions
  end

end