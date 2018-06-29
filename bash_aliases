# ALIASES

alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias aquarium='/usr/local/bin/asciiquarium'
alias android="/usr/local/android-studio/bin/studio.sh"
alias local_master="export ROS_MASTER_URI=http://localhost:11311"
alias auv_master="export ROS_MASTER_URI=http://192.168.0.102:11311"
alias android="sh /usr/local/android-studio/bin/studio.sh"
# alias eth_ros="export ROS_IP="$(ifconfig enp0s25 | grep 'inet addr:' | cut -d: -f2 | awk '{ print $1 }')""
# alias wlan_ros="export ROS_IP="$(ifconfig wlp3s0 | grep 'inet addr:' | cut -d: -f2 | awk '{ print $1 }')""

# VARIABLES
export WEBOTS_HOME=/usr/local/webots

# ENVS
alias env_irl_ex="source /home/jana/env/irl-ex/bin/activate"
