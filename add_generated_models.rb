require 'xcodeproj'

def addfiles(direc, current_group, main_target, changed = false)
    puts "addfiles - `direct`=`#{direc}`, `current_group`=`#{current_group}`, `main_target`=`#{main_target}`"
    Dir.glob(direc) do |item|
        puts "addfiles - `item`=`#{item}`"
        next puts "Next because `.` or `.DS_Store`" if item == '.' or item == '.DS_Store'
        next puts "Next because file (`#{File.basename(item)}`) was in `current_group.children` (#{current_group})" if current_group.children.map { |f| f.name }.include? File.basename(item)
        if File.directory?(item)
            new_folder = File.basename(item)
            created_group = current_group.new_group(new_folder)
            changed = addfiles("#{item}/*", created_group, main_target, changed)
            else
            i = current_group.new_file(item)

            if item.include? ".m"
                build_files = main_target.add_file_references([i])
                changed = true
            end
            if item.include? ".h"
                build_files = main_target.add_file_references([i])
                build_files[0].settings = { 'ATTRIBUTES' => ['Public']}
                changed = true
            end
        end
    end
    return changed
end

def add_group_to_project(project_path, name_of_generated_folder)
    project = Xcodeproj::Project.open(project_path)

    generated_group = project.main_group[name_of_generated_folder]
    unless generated_group
        generated_group = project.main_group.new_group(name_of_generated_folder)
    end

    main_target = project.targets.first
    added_new_files = addfiles("#{name_of_generated_folder}/*", generated_group, main_target)

    if added_new_files
        project.save
    end
end

project_path = 'MSGraphClientModels.xcodeproj'
puts "`project_path`=`#{project_path}`"
add_group_to_project(project_path, 'GeneratedModels')
