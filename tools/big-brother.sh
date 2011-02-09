#!/bin/bash
# run this from the top level directory

update_git_hooks() 
{
  echo "UPDATING GIT HOOKS"
  for file in tools/githooks/*; do 
    base=$(basename $file)
    githook=.git/hooks/$base
    diff $file $githook >/dev/null 2>&1 
    if (( $? )); then
      echo "new $base detected, updating"
      cp -f $file $githook >/dev/null 2>&1
    else
      echo "$base unmodified"
    fi
  done

}

update_git_aliases() 
{
  echo "UPDATING GIT ALIASES"
  git config alias.sf "submodule foreach"
  git config alias.siu "!git submodule update --init --recursive"
  git config alias.pullup "!sh -c 'git pull \$1 \$2 && git siu' -"
  git config alias.checkup "!sh -c 'git checkout \$1 && git siu' -"
  git config alias.fetchup "!sh -c 'git fetch \$1 --prune && git sf git fetch \$1 --prune' -"
  # do testing in tools/pre-push.sh
  git config alias.send '!tools/pre-push.sh && git push "$@"'
  # we don't need this when we can put beautify.sh into the makefile
  git config alias.commit '!tools/beautify.sh && git commit'
  # this really belongs in your top level .gitconfig file
  git config alias.new "!sh -c 'git init && git remote add origin \$1 && git config branch.master.remote origin && git config branch.master.merge refs/heads/master && git config remote.origin.push refs/heads/master:refs/heads/master && git config remote.origin.pull refs/heads/master:refs/heads/master' -"
}

# MAIN

echo "*** BIG BROTHER ***"
update_git_hooks
update_git_aliases

exit 0
