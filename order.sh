#!/usr/bin/env bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

#特殊标注
sh_ver="1.0.0"
Info="${Green_font_prefix}[信息]${Font_color_suffix}"
Error="${Red_font_prefix}[错误]${Font_color_suffix}"
Tip="${Green_font_prefix}[注意]${Font_color_suffix}"

#安装update
installupdate(){
  if [[ "${release}" == "centos" ]]; then
  yum update -y
  fi
  elif [[ "${release}" == "debian" || "${release}" == "ubuntu" ]]; then
  apt-get update -y
  fi
}

#安装curl
installcurl(){
  if [[ "${release}" == "centos" ]]; then
  yum update && yum install curl vim -y
  fi
  
  elif [[ "${release}" == "debian" || "${release}" == "ubuntu" ]]; then
  apt-get update && apt-get install curl vim -y
  fi
}

#安装statu
installstatu(){
  if [[ "${release}" == "centos" ]]; then
  yum update && yum install curl vim -y
  wget --no-check-certificate https://raw.githubusercontent.com/CokeMine/ServerStatus-Hotaru/master/status.sh
  fi
  
  elif [[ "${release}" == "debian" || "${release}" == "ubuntu" ]]; then
  apt-get update && apt-get install curl vim -y
  wget --no-check-certificate https://raw.githubusercontent.com/CokeMine/ServerStatus-Hotaru/master/status.sh
  fi
}

#安装docker
installdocker(){
  if [[ "${release}" == "centos" ]]; then
  yum update && yum install curl vim -y
  curl -fsSL get.docker.com -o get-docker.sh
  sh get-docker.sh
  fi
  
  elif [[ "${release}" == "debian" || "${release}" == "ubuntu" ]]; then
  apt-get update && apt-get install curl vim -y
  curl -fsSL get.docker.com -o get-docker.sh
  sh get-docker.sh
  fi
}

#安装全部
installdocker0statu(){
  if [[ "${release}" == "centos" ]]; then
  yum update && yum install curl vim -y
  wget --no-check-certificate https://raw.githubusercontent.com/CokeMine/ServerStatus-Hotaru/master/status.sh
  curl -fsSL get.docker.com -o get-docker.sh
  sh get-docker.sh
  fi
  
  elif [[ "${release}" == "debian" || "${release}" == "ubuntu" ]]; then
  apt-get update && apt-get install curl vim -y
  wget --no-check-certificate https://raw.githubusercontent.com/CokeMine/ServerStatus-Hotaru/master/status.sh
  curl -fsSL get.docker.com -o get-docker.sh
  sh get-docker.sh
  fi
}
#开始菜单
start_menu(){
clear
echo && echo -e " Wisdom 一键安装管理脚本 ${Red_font_prefix}[v${sh_ver}]${Font_color_suffix}

————————————Wisdom自动管理脚本————————————
 ${Green_font_prefix}1.${Font_color_suffix} 更新当前系统
 ${Green_font_prefix}2.${Font_color_suffix} 运行1 并安装curl vim
 ${Green_font_prefix}3.${Font_color_suffix} 运行2 并安装Statu配置
 ${Green_font_prefix}4.${Font_color_suffix} 运行2 并安装docker
 ${Green_font_prefix}5.${Font_color_suffix} 运行1 并安装Statu配置&docker 
 ${Green_font_prefix}6.${Font_color_suffix} 退出脚本" && echo

echo
read -p " 请输入数字 :" num
case "$num" in
	1)
	check_sys_update
	;;
	2)
	check_sys_curl
	;;
	3)
	check_sys_statu
	;;
	4)
	check_sys_docker
	;;
	5)
	check_sys_docker0statu
	;;
	6)
	exit 1
	;;
	*)
	clear
	echo -e "${Error}:请输入正确数字 [1-6]"
	sleep 5s
	start_menu
	;;
esac
}
