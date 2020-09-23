#开始菜单
start_menu(){
clear
echo && echo -e " TCP加速 一键安装管理脚本 ${Red_font_prefix}[v${sh_ver}]${Font_color_suffix}
 更新内容及反馈:  https://blog.ylx.me/archives/783.html 运行./tcp.sh再次调用本脚本 母鸡慎用
  
————————————Debian&Ubutun————————————
 ${Green_font_prefix}1.${Font_color_suffix} 更新当前系统
 ${Green_font_prefix}2.${Font_color_suffix} 运行1 并安装curl vim
 ${Green_font_prefix}3.${Font_color_suffix} 运行2 并安装Statu配置
 ${Green_font_prefix}4.${Font_color_suffix} 运行2 并安装docker
 ${Green_font_prefix}5.${Font_color_suffix} 运行1 并安装Statu配置&docker

————————————Centos————————————
 ${Green_font_prefix}11.${Font_color_suffix} 更新当前系统
 ${Green_font_prefix}12.${Font_color_suffix} 运行1 并安装curl vim
 ${Green_font_prefix}13.${Font_color_suffix} 运行2 并安装Statu配置
 ${Green_font_prefix}14.${Font_color_suffix} 运行2 并安装docker
 ${Green_font_prefix}15.${Font_color_suffix} 运行1 并安装Statu配置&docker
 
————————————杂项管理————————————
 ${Green_font_prefix}21.${Font_color_suffix} 卸载全部加速
 ${Green_font_prefix}23.${Font_color_suffix} 退出脚本
————————————————————————————————" && echo

	check_status
	echo -e " 当前内核为：${Font_color_suffix}${kernel_version_r}${Font_color_suffix}"
	if [[ ${kernel_status} == "noinstall" ]]; then
		echo -e " 当前状态: ${Green_font_prefix}未安装${Font_color_suffix} 加速内核 ${Red_font_prefix}请先安装内核${Font_color_suffix}"
	else
		echo -e " 当前状态: ${Green_font_prefix}已安装${Font_color_suffix} ${_font_prefix}${kernel_status}${Font_color_suffix} 加速内核 , ${Green_font_prefix}${run_status}${Font_color_suffix}"
		
	fi
	echo -e " 当前拥塞控制算法为: ${Green_font_prefix}${net_congestion_control}${Font_color_suffix} 当前队列算法为: ${Green_font_prefix}${net_qdisc}${Font_color_suffix} "
	
echo
read -p " 请输入数字 :" num
case "$num" in
	0)
	Update_Shell
	;;
	1)
	check_sys_bbr
	;;
	2)
	check_sys_bbrplus
	;;
	3)
	check_sys_Lotsever
	;;
	4)
	check_sys_xanmod
	;;
	5)
	check_sys_bbr2
	;;
	6)
	check_sys_zen
	;;
	7)
	check_sys_bbrplusnew	
	;;
	8)
	gototeddysun_bbr
	;;
	9)
	gototcpx
	;;
	10)
	gotodd	
	;;
	11)
	startbbrfq
	;;
	12)
	startbbrcake
	;;
	13)
	startbbrplus
	;;
	14)
	startlotserver
	;;
	15)
	startbbr2fq
	;;
	16)
	startbbr2cake
	;;
	17)
	startbbr2fqecn
	;;
	18)
	startbbr2cakeecn
	;;
	21)
	remove_all
	;;
	22)
	optimizing_system
	;;
	23)
	exit 1
	;;
	*)
	clear
	echo -e "${Error}:请输入正确数字 [0-23]"
	sleep 5s
	start_menu
	;;
esac
}
