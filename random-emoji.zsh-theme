#
# Random logic
#

EMOJI=(💩 🐦 🚀 🐞 🎨 🍕 🐭 👽 ☕️ 🔬 💀 🐷 🐼 🐶 🐸 🐧 🐳 🍔 🍣 🍻 🔮 💰 💎 💾 💜 🍪 🌞 🌍 🐌 🐓 🍄 🍺 )

function random_emoji {
  echo -n "$EMOJI[$RANDOM%$#EMOJI+1]"
}

local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"

# -------------------------------
# general
# -------------------------------
PROMPT='$(random_emoji)  %{$fg_bold[red]%}%n%{${reset_color}%} ${ret_status} %{$fg[cyan]%}%c%{$reset_color%}$(git_prompt_info) '

# -------------------------------
# git
# -------------------------------
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[green]%}(%{$fg[blue]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[green]%}) %{$fg[yellow]%}⚡%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%})"