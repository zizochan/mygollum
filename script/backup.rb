current_branch = `git rev-parse --abbrev-ref HEAD`.chomp
command = "git pull origin #{current_branch}; git push origin #{current_branch}"
exec(command)
