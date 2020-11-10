ActiveAdmin.register Customer do
  permit_params :full_name, :phone_number, :email, :notes, :image

  form do |f|
    f.semantic_errors # shows errors on :base
    f.inputs          # builds an input field for every attribute
    f.inputs do
      f.input :image, as: :file, hint: f.object.image.present? ? image_tag(f.object.image) : "" # adds file upload option
    end
    f.actions         # adds the 'Submit' and 'Cancel' buttons
  end
end
