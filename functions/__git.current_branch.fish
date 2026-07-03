function __git.current_branch -d "Show current git branch name"
  set -l ref (git symbolic-ref --quiet --short HEAD 2>/dev/null)
  and echo $ref
  or begin
    # detached HEAD → fall back to short SHA
    git rev-parse --short HEAD 2>/dev/null; or return
  end
end