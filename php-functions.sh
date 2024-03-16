#!/bin/bash

if [ $# -ne 1 ];then
	printf "\n$0 [phpinfo() disable_functions output]\n\n"; exit 1
fi

echo $1 | tr ',' '\n' > functions.php-functions.out

printf "\n\e[3;37m--------------------------------------------------------------------------------------------------------------------\e[0m"
printf "\n$1"
printf "\n\e[3;37m--------------------------------------------------------------------------------------------------------------------\e[0m\n"

printf "\n\e[1;31m# Command Execution Function's #\e[0m"

[ ! "$(grep -w system functions.php-functions.out)" ] && printf "\n   \e[1;37m* system - enabled\e[0m"
[ ! "$(grep -w exec functions.php-functions.out)" ] && printf "\n   \e[1;37m* exec - enabled\e[0m"
[ ! "$(grep -w passthru functions.php-functions.out)" ] && printf "\n   \e[1;37m* passthru - enabled\e[0m"
[ ! "$(grep -w pcntl_exec functions.php-functions.out)" ] && printf "\n   \e[1;37m* pcntl_exec - enabled\e[0m"
[ ! "$(grep -w popen functions.php-functions.out)" ] && printf "\n   \e[1;37m* popen - enabled\e[0m"
[ ! "$(grep -w proc_open functions.php-functions.out)" ] && printf "\n   \e[1;37m* proc_open - enabled\e[0m"
[ ! "$(grep -w shell_exec functions.php-functions.out)" ] && printf "\n   \e[1;37m* shell_exec - enabled\e[0m"

printf "\n\n\e[1;31m# Php Code Execution Function's #\e[0m"

[ ! "$(grep -w assert functions.php-functions.out)" ] && printf "\n   \e[1;37m* assert - enabled\e[0m"
[ ! "$(grep -w preg_replace functions.php-functions.out)" ] && printf "\n   \e[1;37m* preg_replace - enabled\e[0m"
[ ! "$(grep -w create_function functions.php-functions.out)" ] && printf "\n   \e[1;37m* create_function - enabled\e[0m"
[ ! "$(grep -w include functions.php-functions.out)" ] && printf "\n   \e[1;37m* include - enabled\e[0m"
[ ! "$(grep -w include_once functions.php-functions.out)" ] && printf "\n   \e[1;37m* include_once - enabled\e[0m"
[ ! "$(grep -w require functions.php-functions.out)" ] && printf "\n   \e[1;37m* require - enabled\e[0m"

printf "\n\n\e[1;31m# Information Disclosure Function's #\e[0m"

[ ! "$(grep -w phpinfo functions.php-functions.out)" ] && printf "\n   \e[1;37m* phpinfo - enabled\e[0m"
[ ! "$(grep -w posix_mkfifo functions.php-functions.out)" ] && printf "\n   \e[1;37m* posix_mkfifo - enabled\e[0m"
[ ! "$(grep -w posix_getlogin functions.php-functions.out)" ] && printf "\n   \e[1;37m* posix_getlogin - enabled\e[0m"
[ ! "$(grep -w posix_ttyname functions.php-functions.out)" ] && printf "\n   \e[1;37m* posix_ttyname - enabled\e[0m"
[ ! "$(grep -w getenv functions.php-functions.out)" ] && printf "\n   \e[1;37m* getenv - enabled\e[0m"
[ ! "$(grep -w get_current_user functions.php-functions.out)" ] && printf "\n   \e[1;37m* get_current_user - enabled\e[0m"
[ ! "$(grep -w proc_get_status functions.php-functions.out)" ] && printf "\n   \e[1;37m* proc_get_status - enabled\e[0m"
[ ! "$(grep -w get_cfg_var functions.php-functions.out)" ] && printf "\n   \e[1;37m* get_cfg_var - enabled\e[0m"
[ ! "$(grep -w disk_free_space functions.php-functions.out)" ] && printf "\n   \e[1;37m* disk_free_space - enabled\e[0m"
[ ! "$(grep -w disk_total_space functions.php-functions.out)" ] && printf "\n   \e[1;37m* disk_total_space - enabled\e[0m"
[ ! "$(grep -w diskfreespace functions.php-functions.out)" ] && printf "\n   \e[1;37m* diskfreespace - enabled\e[0m"
[ ! "$(grep -w getcwd functions.php-functions.out)" ] && printf "\n   \e[1;37m* getcwd - enabled\e[0m"
[ ! "$(grep -w getlastmo functions.php-functions.out)" ] && printf "\n   \e[1;37m* getlastmo - enabled\e[0m"
[ ! "$(grep -w getmygid functions.php-functions.out)" ] && printf "\n   \e[1;37m* getmygid - enabled\e[0m"
[ ! "$(grep -w getmyinode functions.php-functions.out)" ] && printf "\n   \e[1;37m* getmyinode - enabled\e[0m"
[ ! "$(grep -w getmypid functions.php-functions.out)" ] && printf "\n   \e[1;37m* getmypid - enabled\e[0m"

echo
rm -f functions.php-functions.out