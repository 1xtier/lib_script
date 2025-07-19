#!/usr/bin/env bash


#Color variables
NORMAL='\033[0m' 	 # ${NORMAL}  ->  # Возврат цвета в нормальное состояние
GREEN='\033[32m' 	 # ${GREEN}   ->  # Зеленый цвет 
RED='\033[31m'		 # ${RED}     ->  # Красный цвет
YELLOW='\033[33m'	 # ${YELLOW}  ->  # Желтый цвет 
BLUE='\033[34m'		 # ${BLUE}    ->  # Синий цвет
MAGENTA='\033[35m'	 # ${MAGENTA} ->  # Фиолетовый цвет
CYAN='\033[36m'   	 # ${CYAN}    ->  # Цвет морской волны
GRAY='\033[37m'		 # ${GRAY}    ->  # Серый цвет

# Install base software linux
function rpm_dase(){
  dnf update -y
  dnf install -y epel-release || dnf update -y
  dnf update -y
  dnf install -y wget mc git vim htop atop traceroute tcpdump nmon atop tree at psmisc ncdu pciutils bind-utils cpan 
}

function deb_base(){
  apt update -y && apt upgrade -y
  apt install wget mc git vim htop atop traceroute tcpdump nmon atop tree at psmisc ncdu pciutils bind-utils cpan
}

# 
