# .bashrc
#
# User specific aliases and functions
alias vi='vim'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias sdl='svn diff | less'
alias grep="grep --color=always"
alias ck='cd /www/git-repos/ck/'
alias pm='cd /www/git-repos/pm/'
alias modules='cd /www/git-repos/pm/docroot/application/modules/'
alias misc='cd /www/git-repos/misc/'
alias localsites='cd /www/git-repos/localsites/'
alias tailpm='tail -f /www/git-repos/pm/logs/application/webapp.log'
alias tailck='tail -f /www/git-repos/ck/logs/application/webapp.log'
alias apacherestart='sudo /sbin/service httpd restart'
alias pmsql='/var/www/git-repos/misc/sql/update.php /var/www/git-repos/pm/sql'
alias miscsql='/var/www/git-repos/misc/sql/update.php /var/www/git-repos/misc/sql'
alias phpcli='SERVER_NAME=www.creditkarma.com SERVER_PORT=443 REQUEST_URL=index.php php -c /etc/php_cli.ini'
alias unit='/www/git-repos/pm/tests/unit/runTest.sh'
alias debugworker='phpcli /var/www/git-repos/pm/cli/tasks/continuous/gearmanWorker.php -d'
alias gearmanstatus='php -c /etc/php_cli.ini /var/www/cli_pm/apps/gearman_admin/gearman_admin.php status'
alias gearmanstop='supervisorctl stop all'
alias gearmanstart='supervisorctl restart all'
alias class='php /var/www/git-repos/pm/tools/gen_class_paths.php'
alias networkrestart='sudo /sbin/service network restart'
alias dnsrestart='sudo killall -HUP mDNSResponder'
alias fixtime='sudo /usr/sbin/ntpdate 0.north-america.pool.ntp.org
1.north-america.pool.ntp.org 2.north-america.pool.ntp.org
3.north-america.pool.ntp.org'

alias runsh='/var/www/cli_pm/run.sh'
alias which='alias | /usr/bin/which --tty-only --read-alias --show-dot --show-tilde'

alias l.='ls -d .*'
alias ll='ls -l'
#
PATH=$HOME/bin:/usr/lib/jre1.7.0_60/bin:$PATH
export PATH

export SVN_EDITOR=/usr/bin/nano

alias phpcli="php -c /etc/php_cli.ini"

# pretty output
export PS1="\nVM > \$PWD \$ ";

# git auto completion
if [ -f /etc/bash_completion.d/git ];
then source /etc/bash_completion.d/git
fi
