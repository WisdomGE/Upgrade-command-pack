#!/usr/bin/env bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

#特殊标注
sh_ver="1.0.0"
Green_font_prefix="\033[32m" && Red_font_prefix="\033[31m" && Green_background_prefix="\033[42;37m" && Red_background_prefix="\033[41;37m" && Font_color_suffix="\033[0m"
Info="${Green_font_prefix}[信息]${Font_color_suffix}"
Error="${Red_font_prefix}[错误]${Font_color_suffix}"
Tip="${Green_font_prefix}[注意]${Font_color_suffix}"

#安装update
update(){
	if [[ "${release}" == "centos" ]]; then
		yum update -y
	elif [[ "${release}" == "ubuntu" ]]; then
		apt-get update -y
	elif [[ "${release}" == "debian" ]]; then
		apt-get update -y
	fi
	start_menu
}


#安装curl
install_curl(){
	if [[ "${release}" == "centos" ]]; then
		yum update && yum install curl vim -y
	elif [[ "${release}" == "ubuntu" ]]; then
		apt-get update && apt-get install curl vim -y
	elif [[ "${release}" == "debian" ]]; then
		apt-get update && apt-get install curl vim -y
	fi
	start_menu
}

#安装statu
install_statu(){
	if [[ "${release}" == "centos" ]]; then
		wget --no-check-certificate https://raw.githubusercontent.com/CokeMine/ServerStatus-Hotaru/master/status.sh
	elif [[ "${release}" == "ubuntu" ]]; then
		wget --no-check-certificate https://raw.githubusercontent.com/CokeMine/ServerStatus-Hotaru/master/status.sh
	elif [[ "${release}" == "debian" ]]; then
		wget --no-check-certificate https://raw.githubusercontent.com/CokeMine/ServerStatus-Hotaru/master/status.sh
	fi
	bash status.sh c
}

#安装docker
install_docker(){
	if [[ "${release}" == "centos" ]]; then
		curl -fsSL get.docker.com -o get-docker.sh
		sh get-docker.sh
	elif [[ "${release}" == "ubuntu" ]]; then
		curl -fsSL get.docker.com -o get-docker.sh
		sh get-docker.sh
	elif [[ "${release}" == "debian" ]]; then
		curl -fsSL get.docker.com -o get-docker.sh
		sh get-docker.sh
	fi
	start_menu
}

#安装Statu配置&docker
install_docker_statu(){
	if [[ "${release}" == "centos" ]]; then
		wget --no-check-certificate https://raw.githubusercontent.com/CokeMine/ServerStatus-Hotaru/master/status.sh
		curl -fsSL get.docker.com -o get-docker.sh
		sh get-docker.sh
	elif [[ "${release}" == "ubuntu" ]]; then
		wget --no-check-certificate https://raw.githubusercontent.com/CokeMine/ServerStatus-Hotaru/master/status.sh
		curl -fsSL get.docker.com -o get-docker.sh
		sh get-docker.sh
	elif [[ "${release}" == "debian" ]]; then
		wget --no-check-certificate https://raw.githubusercontent.com/CokeMine/ServerStatus-Hotaru/master/status.sh
		curl -fsSL get.docker.com -o get-docker.sh
		sh get-docker.sh
	fi
	start_menu
}

#运行旧tcp加速
install_old_tcp(){
	if [[ "${release}" == "centos" ]]; then
		wget -N --no-check-certificate "https://raw.githubusercontent.com/chiakge/Linux-NetSpeed/master/tcp.sh" && chmod +x tcp.sh && ./tcp.sh
	elif [[ "${release}" == "ubuntu" ]]; then
		wget -N --no-check-certificate "https://raw.githubusercontent.com/chiakge/Linux-NetSpeed/master/tcp.sh" && chmod +x tcp.sh && ./tcp.sh
	elif [[ "${release}" == "debian" ]]; then
		wget -N --no-check-certificate "https://raw.githubusercontent.com/chiakge/Linux-NetSpeed/master/tcp.sh" && chmod +x tcp.sh && ./tcp.sh
	fi
}

#运行新tcp加速
install_old_tcp(){
	if [[ "${release}" == "centos" ]]; then
		wget -N --no-check-certificate "https://raw.githubusercontent.com/WisdomGE-cloud/Linux-NetSpeed/master/tcp.sh" && chmod +x tcp.sh && ./tcp.sh
	elif [[ "${release}" == "ubuntu" ]]; then
		wget -N --no-check-certificate "https://raw.githubusercontent.com/WisdomGE-cloud/Linux-NetSpeed/master/tcp.sh" && chmod +x tcp.sh && ./tcp.sh
	elif [[ "${release}" == "debian" ]]; then
		wget -N --no-check-certificate "https://raw.githubusercontent.com/WisdomGE-cloud/Linux-NetSpeed/master/tcp.sh" && chmod +x tcp.sh && ./tcp.sh
	fi
}

#运行iptable端口转发
iptable(){
	if [[ "${release}" == "centos" ]]; then
		wget -qO natcfg.sh http://arloor.com/sh/iptablesUtils/natcfg.sh && bash natcfg.sh
	elif [[ "${release}" == "ubuntu" ]]; then
		wget -qO natcfg.sh http://arloor.com/sh/iptablesUtils/natcfg.sh && bash natcfg.sh
	elif [[ "${release}" == "debian" ]]; then
		wget -qO natcfg.sh http://arloor.com/sh/iptablesUtils/natcfg.sh && bash natcfg.sh
	fi
}

#添加虚拟内存
swap(){
	if [[ "${release}" == "centos" ]]; then
		wget https://www.moerats.com/usr/shell/swap.sh && bash swap.sh
	elif [[ "${release}" == "ubuntu" ]]; then
		wget https://www.moerats.com/usr/shell/swap.sh && bash swap.sh
	elif [[ "${release}" == "debian" ]]; then
		wget https://www.moerats.com/usr/shell/swap.sh && bash swap.sh
	fi
}

#DNS流媒体解锁服务
dns(){
	if [[ "${release}" == "centos" ]]; then
		wget --no-check-certificate -O dnsmasq_sniproxy.sh https://raw.githubusercontent.com/myxuchangbin/dnsmasq_sniproxy_install/master/dnsmasq_sniproxy.sh && bash dnsmasq_sniproxy.sh -f
	elif [[ "${release}" == "ubuntu" ]]; then
		wget --no-check-certificate -O dnsmasq_sniproxy.sh https://raw.githubusercontent.com/myxuchangbin/dnsmasq_sniproxy_install/master/dnsmasq_sniproxy.sh && bash dnsmasq_sniproxy.sh -f
	elif [[ "${release}" == "debian" ]]; then
		wget --no-check-certificate -O dnsmasq_sniproxy.sh https://raw.githubusercontent.com/myxuchangbin/dnsmasq_sniproxy_install/master/dnsmasq_sniproxy.sh && bash dnsmasq_sniproxy.sh -f
	fi
}


#开始菜单
start_menu(){
clear
echo && echo -e " Wisdom 一键安装管理脚本 ${Red_font_prefix}[v${sh_ver}]${Font_color_suffix}

————————————Wisdom自动管理脚本————————————
 ${Green_font_prefix}1.${Font_color_suffix}  更新当前系统
 ${Green_font_prefix}2.${Font_color_suffix}  安装curl vim
 ${Green_font_prefix}3.${Font_color_suffix}  安装Statu配置
 ${Green_font_prefix}4.${Font_color_suffix}  安装docker
 ${Green_font_prefix}5.${Font_color_suffix}  安装Statu配置&docker
 ${Green_font_prefix}6.${Font_color_suffix}  运行旧tcp加速
 ${Green_font_prefix}7.${Font_color_suffix}  运行新tcp加速
 ${Green_font_prefix}8.${Font_color_suffix}  运行iptable端口转发
 ${Green_font_prefix}9.${Font_color_suffix}  添加虚拟内存
 ${Green_font_prefix}10.${Font_color_suffix} DNS流媒体解锁服务
 ${Green_font_prefix}0.${Font_color_suffix}  退出脚本
 ————————————————————————————————" && echo

echo
read -p " 请输入数字 :" num
case "$num" in
	1)
	update
	;;
	2)
	install_curl
	;;
	3)
	install_statu
	;;
	4)
	install_docker
	;;
	5)
	install_docker_statu
	;;
	6)
	install_old_tcp
	;;
	7)
	install_new_tcp
	;;
	8)
	iptable
	;;
	9)
	swap
	;;
	10)
	dns
	;;
	0)
	exit 1
	;;
	*)
	clear
	echo -e "${Error}:请输入正确数字 [0-10]"
	sleep 5s
	start_menu
	;;
esac
}

#检查系统
check_sys(){
	if [[ -f /etc/redhat-release ]]; then
		release="centos"
	elif cat /etc/issue | grep -q -E -i "debian"; then
		release="debian"
	elif cat /etc/issue | grep -q -E -i "ubuntu"; then
		release="ubuntu"
	elif cat /etc/issue | grep -q -E -i "centos|red hat|redhat"; then
		release="centos"
	elif cat /proc/version | grep -q -E -i "debian"; then
		release="debian"
	elif cat /proc/version | grep -q -E -i "ubuntu"; then
		release="ubuntu"
	elif cat /proc/version | grep -q -E -i "centos|red hat|redhat"; then
		release="centos"
    fi
	
#处理ca证书
	if [[ "${release}" == "centos" ]]; then
		yum install ca-certificates -y
		update-ca-trust force-enable
	elif [[ "${release}" == "debian" || "${release}" == "ubuntu" ]]; then
		apt-get install ca-certificates -y
		update-ca-certificates
	fi	
}

#检查Linux版本
check_version(){
	if [[ -s /etc/redhat-release ]]; then
		version=`grep -oE  "[0-9.]+" /etc/redhat-release | cut -d . -f 1`
	else
		version=`grep -oE  "[0-9.]+" /etc/issue | cut -d . -f 1`
	fi
	bit=`uname -m`
	if [[ ${bit} = "x86_64" ]]; then
		bit="x64"
	else
		bit="x32"
	fi
}

#############系统检测组件#############
check_sys
check_version
[[ ${release} != "debian" ]] && [[ ${release} != "ubuntu" ]] && [[ ${release} != "centos" ]] && echo -e "${Error} 本脚本不支持当前系统 ${release} !" && exit 1
start_menu
