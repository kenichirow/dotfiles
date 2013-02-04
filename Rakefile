#! /usr/bin/env rake

TARGET = %w[
  .tmux.conf
  .vimrc
  .gvimrc
  .zshrc
  .zshenv
]

task :install do
  TARGET.each do |path|
    to   = File.expand_path(path ,"~")
    from = File.expand_path(path)

    if File.symlink? to
      File.delete(to)
    end
    File.symlink(from,to)

    puts "installed #{to}"
  end 
end
