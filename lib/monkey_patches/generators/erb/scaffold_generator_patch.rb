require 'rails/generators/erb/scaffold/scaffold_generator'

module ScaffoldGeneratorPatch
  def self.prepended(base)
    base.source_paths << Rails.root.join('lib/templates/erb/scaffold')
  end

  def copy_view_files
    available_views.each do |view|
      formats.each do |format|
        filename = filename_with_extensions(view, format)
        template filename, File.join("app/views", controller_file_path, filename)
      end
    end
  end
end

Erb::Generators::ScaffoldGenerator.prepend(ScaffoldGeneratorPatch)

