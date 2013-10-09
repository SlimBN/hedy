ActiveAdmin.register Videography do

  index do
    column :title
    column :code
    column :description
    column :ayna
    column :wa9tesh
    default_actions
  end

 form :html => { :enctype => "multipart/form-data" } do |f|
   f.inputs "Details" do
    f.input :title
    f.input :code
    f.input :description
    f.input :ayna
    f.input :wa9tesh
  end
  f.buttons
 end

end
