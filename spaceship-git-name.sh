SPACESHIP_GIT_USER_PREFIX="${SPACESHIP_GIT_USER_PREFIX="as "}"
SPACESHIP_GIT_USER_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
SPACESHIP_GIT_USER_SYMBOL="${SPACESHIP_GIT_USER_SYMBOL=" "}"
SPACESHIP_GIT_EMAIL_SYMBOL="${SPACESHIP_GIT_EMAIL_SYMBOL=""}"
SPACESHIP_GIT_USER_COLOR="${SPACESHIP_GIT_USER_COLOR="red"}"

spaceship_git_user() {
  spaceship::is_git || return

  local section=""
  local username="$(git config user.name)"
  local email="$(git config user.email)"

  if [[ -n $email ]]; then
    section+="$SPACESHIP_GIT_EMAIL_SYMBOL"
  fi

  if [[ -n $username ]]; then
    section+="$SPACESHIP_GIT_USER_SYMBOL$username" \
      "$SPACESHIP_GIT_USER_SUFFIX"
  fi

  if [[ -n $section ]]; then
    spaceship::section \
      "$SPACESHIP_GIT_USER_COLOR" \
      "$SPACESHIP_GIT_USER_PREFIX" \
      "$section" 
  fi
}
