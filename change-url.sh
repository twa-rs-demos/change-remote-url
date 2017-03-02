#! /usr/bin/env bash

set -e 

change() {
	cd $1
	echo
	echo before 
	git remote -v 
	git remote set-url origin git@github.com:tws-system/recruiting-system$2.git
	echo after 
	git remote -v
	echo 
	cd -
}


change . ""
change web "-web"
change web-api "-express-api"
change paper-api "-paper-api"
change teacher-admin-web "-teacher-web"
change automated-test "-automated-test"
