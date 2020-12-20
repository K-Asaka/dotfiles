#! /bin/sh
srcdir=$(cd $(dirname $0); pwd)

if [ -d ${HOME}/.config/mpv ]; then
  if [ -e ${HOME}/.config/mpv/mpv.conf ]; then
    echo "${HOME}/.config/mpv/mpv.conf already exists."
  else
    ln -s ${srcdir}/mpv/mpv.conf ${HOME}/.config/mpv/mpv.conf
  fi
  if [ -e ${HOME}/.config/mpv/input.conf ]; then
    echo "${HOME}/.config/mpv/input.conf already exists."
  else
    ln -s ${srcdir}/mpv/input.conf ${HOME}/.config/mpv/input.conf
  fi
else
  echo "${HOME}/.config/mpv not found."
fi

if [ -e ${HOME}/.tmux.conf ]; then
  echo "${HOME}/.tmux.conf already exists."
else
  ln -s ${srcdir}/tmux.conf ${HOME}/.tmux.conf
fi

