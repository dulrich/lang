#!/bin/bash

# lang: simple flashcard system
# Copyright (C) 2016  David Ulrich (http://github.com/dulrich)
# 
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as
# published by the Free Software Foundation, either version 3 of the
# License, or (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.
# 
# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

path=$(pwd)
prgm=script/lang

running=`forever list | grep "$path/$prgm"`

cmd=restart
if [ ${#running} == 0 ]; then
	cmd=start
fi

forever $cmd -c perl $path/$prgm
