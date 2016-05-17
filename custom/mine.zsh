# Add yourself some shortcuts to projects you often work on
# Example:
#
# brainstormr=/Users/robbyrussell/Projects/development/planetargon/brainstormr
#

hash -d sysdoc=/usr/share/doc
hash -d merrysim=~/prog/projects/merrysim
hash -d merryproj=~/prog/projects/merryproj
hash -d merrystem=~/prog/projects/merrystem/trunk
hash -d oofs=~/prog/oofs
hash -d vlab=~/prog/projects/vlab
hash -d vve=~/prog/projects/vlab/vve
hash -d point_tracker=~/prog/projects/point_tracker
hash -d LiG=~/prog/projects/LiG
hash -d projects=~/prog/projects
hash -d various=~/prog/projects/various
hash -d LithoGraphX=~/prog/projects/LithoGraphX
hash -d MorphoGraphX2=~/prog/projects/MorphoGraphX2
hash -d MorphoGraphX=~/prog/projects/MorphoGraphX
hash -d mgx_koln=~/prog/projects/MorphoGraphX_Koln/branches/cologne
hash -d MorphoRobotX=~/prog/projects/MorphoRobotX
hash -d pyqt_fit=~/prog/python/pyqt_fit
hash -d pyqt_fit3=~/prog/python/pyqt_fit3
hash -d bernbiomech=~/prog/projects/BernBioMech
hash -d bernbiomech_misc=~/prog/projects/BernBioMech/misc/trunk
hash -d uwhpsc=~/Documents/Coursera/HPC

# Set the options
# First, stop trying to kill background process when exiting and never beep
setopt no_hup no_beep
# Change behavior of history : share the history between shells
# and avoid saving duplicate commands also remove unused blanks
# from commands before storing them
setopt inc_append_history hist_save_no_dups hist_ignore_all_dups hist_reduce_blanks no_hist_save_bycopy
# executing a directory => cd into it
setopt auto_cd
# Use extending parameter expansion
setopt extended_glob
# Allow multiple IO redirections
setopt mult_ios
# If I missed something on a command, ask for correction !
setopt correct
# Use advanced "substitution" prompt
setopt prompt_subst
# Use cd as pushd and avoid duplicates in dirs
setopt pushd_to_home auto_pushd pushd_ignore_dups
# Enable utf-8 char support
setopt printeightbit
# Allow verification of history usage
setopt histverify

# Use emacs mode
bindkey -e

# enable color support of ls and also add handy aliases
eval $(dircolors -b ~/.dircolorsrc)

# force ssh v2
alias ssh='ssh -o "Protocol 2,1"'
alias scp='scp -o "Protocol 2,1"'
alias gdb="gdb -x ~/.gdbint"
alias ipython3_qt="ipython3 qtconsole --colors=linux --pylab=qt --editor=gvim --profile=pandas"
alias ipython2_qt="ipython2 qtconsole --colors=linux --pylab=qt --editor=gvim --profile=pandas"
alias ipython3_kernel="ipython3 kernel --pylab=qt --profile=pandas"
alias ipython2_kernel="ipython2 kernel --pylab=qt --profile=pandas"
alias ipython_qt="ipython qtconsole --colors=linux --pylab=qt --editor=gvim --profile=pandas"
alias ipython_con="ipython console --colors=linux --pylab=qt --profile=pandas"
alias ipython_kernel="ipython kernel --pylab=qt --profile=pandas"
alias ipython_notebook="ipython notebook --colors=linux --pylab inline --profile=pandas"
alias ipython3_notebook="ipython3 notebook --colors=linux --pylab inline --profile=pandas"
alias ipython2_notebook="ipython2 notebook --colors=linux --pylab inline --profile=pandas"
alias vgl_ipython3_qt="vglrun ipython3 qtconsole --colors=linux --pylab=qt --editor=gvim --profile=pandas"
alias vgl_ipython_qt="vglrun ipython qtconsole --colors=linux --pylab=qt --editor=gvim --profile=pandas"
alias open=xdg-open

alias ack=ack-grep

# OPAM configuration
. /home/barbier/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

# Add a text for interactive shells
case $- in
  *i*)
    fortune
    ;;
esac

# Remove aliases I don't like
unalias cp
