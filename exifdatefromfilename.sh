#!/bin/bash
# Author: Pablo Iranzo Gómez (Pablo.Iranzo@gmail.com)  https://iranzo.github.io
# Description: Defines date of the file headers based on the filename

exiftool '-CreateDate<${FileName;use Date::Manip;
                    Date_Init("DateFormat=non-US");
                    /on (.*at.*?)(?: #\d+)?\.jpg$/;$_=$1;
                    y/./:/;$_=UnixDate($_,"%Y-%m-%d %T")
                    }' ${@}
