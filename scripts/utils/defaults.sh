#!/bin/bash
# Copyright (c) 2019:   Scott Atkins <scott@kins.dev>
#                       (https://git.kins.dev/igrill-smoker)
# License:              MIT License
#                       See the LICENSE file
# shellcheck disable=2034
true
# shellcheck disable=2086
set -$-ue${DEBUG+xv}
iGrill__ALL_SECTIONS='iGrill TPLink Smoking Reporting'
iGrill__ALL_VARS='iGrill__iGrill__Type iGrill__iGrill__PollTime iGrill__iGrill__MeatProbe iGrill__iGrill__SmokeProbe iGrill__iGrill__LogLevel iGrill__iGrill__LogFile iGrill__TPLink__IP iGrill__Smoking__SmokeMid iGrill__Smoking__InternalTarget iGrill__Smoking__MaxTempChange iGrill__Smoking__Food iGrill__Smoking__TempBandSize iGrill__Reporting__ResultsDirectory iGrill__Reporting__CSVFile iGrill__Reporting__StateFile'
iGrill__NUMSECTIONS=4
iGrill__Reporting__CSVFile=current.csv
iGrill__Reporting__ResultsDirectory=/var/www/html
iGrill__Reporting__StateFile=state.json
iGrill__Smoking__Food=brisket
iGrill__Smoking__InternalTarget=185
iGrill__Smoking__MaxTempChange=2
iGrill__Smoking__SmokeMid=225
iGrill__Smoking__TempBandSize=7
iGrill__TPLink__IP=192.168.0.1
iGrill__iGrill__LogFile=
iGrill__iGrill__LogLevel=INFO
iGrill__iGrill__MeatProbe=1
iGrill__iGrill__PollTime=20
iGrill__iGrill__SmokeProbe=4
iGrill__iGrill__Type=standard
