function ggpush -d "Push current branch to origin"
  set -l branch (__git.current_branch); or return
  git push origin $branch $argv
end