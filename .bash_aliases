alias cola=git-cola
alias vi=vim
alias nwfix="sudo systemctl restart dhcpcd"
alias upchk="sudo emerge --sync && sudo layman -S && emerge -pvNuD @world"
alias sflvpn="sudo openvpn --config /etc/openvpn/client.conf"

vimp() {
    vim -c ":source $1"
}
