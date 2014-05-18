ActiveAdmin.register Outfits do

  
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
  
  form do |f|
      f.inputs "Outfits" do 
        f.input :name
        f.input :show_id, :label => 'Show Name', :as => :select, :collection => Show.all.order(:name), :include_blank => true
       
        f.input :season, :hint => 'Season for Shows', :as => :select, :collection => options_for_select((1..15).step(1))
        
        f.input :episode_id, :hint => 'Episodes grouped by Show Names', :as => :select, :collection => option_groups_from_collection_for_select(Show.all.order(:name), :episodes, :name, :id, :name)

        
        f.input :actor_id, :hint => 'Actor grouped by Show names', :as => :select, :collection => option_groups_from_collection_for_select(Show.all.order(:name), :actors, :name, :id, :name)
        
        f.input :image
      end

      f.actions
    end
end
