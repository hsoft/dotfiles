alias cola=git-cola
alias vi=vim
alias nwfix="sudo systemctl restart dhcpcd"
alias upchk="sudo emerge --sync && sudo layman -S && emerge -pvNuD @world"
alias sflvpn="sudo openvpn --config /etc/openvpn/client.conf"
alias docker-cclean="docker ps -q -a | xargs sudo docker rm"
alias docker-iclean="docker images -q --filter 'dangling=true' | xargs sudo docker rmi"

vimp() {
    vim -c ":source $1"
}

dockterm() {
    docker run -t -i $1 /bin/bash
}
