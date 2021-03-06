#!/usr/bin/env python3
"""
  Copyright (c) 2019:   Scott Atkins <scott@kins.dev>
                        (https://git.kins.dev/igrill-smoker)
  License:              MIT License
                        See the LICENSE file
"""

__author__ = "Scott Atkins"
__version__ = "1.4.0"
__license__ = "MIT"


import pigpio
import logging
import argparse
import configparser
import time
import os
# Line to make pylint work
from argparse import ArgumentParser
from ..common.local_logging import SetupLog
from ..common.constant import SSRC, CONFIG


def DetectBoard(board):
    if (SSRC.BOARD.DETECT_REV != board):
        return board
    else:
        pi = pigpio.pi()
        i = 0
        val = 0
        for p in SSRC.BOARD.REV_PINS:
            pi.set_mode(p, pigpio.INPUT)

            pi.set_pull_up_down(p, pigpio.PUD_DOWN)
            tmp = pi.read(p)
            #logging.debug("Pin \"{}\" : \"{}\"".format(p, tmp))
            val = val + (tmp << i)
            i = i + 1
        #logging.debug("Val = \"{}\"".format(val))
        if (val in SSRC.BOARD.REV_MAP):
            return SSRC.BOARD.REV_MAP[val]
        return SSRC.BOARD.DISABLED

def DetectID(board):
    realBoard = DetectBoard(board)
    if(realBoard == SSRC.BOARD.REV_ss):
        return -1
    if(realBoard == SSRC.BOARD.REV_sA):
        return -1
    if(realBoard == SSRC.BOARD.REV_sB):
        return -1
    if(realBoard == SSRC.BOARD.REV_sC):
        return -1
    if(realBoard == SSRC.BOARD.REV_sD):
        return -1
    if(realBoard == SSRC.BOARD.REV_sD_Patched):
        return -1
    pi = pigpio.pi()
    i = 0
    val = 0
    for p in SSRC.BOARD.ID_PINS:
        pi.set_mode(p, pigpio.INPUT)

        pi.set_pull_up_down(p, pigpio.PUD_DOWN)
        tmp = pi.read(p)
        #logging.debug("Pin \"{}\" : \"{}\"".format(p, tmp))
        val = val + (tmp << i)
        i = i + 1
    return val

def main():
    config = configparser.ConfigParser()
    # does not throw an error, just returns the empty set if the file doesn't exist
    config.read(CONFIG.BASEPATH+'/config/iGrill_config.ini')
    loglevel = config.get("Logging", "LogLevel", fallback="Error")
    logfile = config.get("Logging", "LogFile", fallback="")
    board = config.get("SSR", "Board")

    parser = argparse.ArgumentParser(
        description='Sets the leds on the SSR control board')
    parser.add_argument(
        '-l',
        '--log-level',
        action='store',
        dest='log_level',
        default=loglevel,
        help='Set log level, default: \'' + loglevel + '\'')
    parser.add_argument(
        '-d',
        '--log-destination',
        action='store',
        dest='log_destination',
        default=logfile,
        help='Set log destination (file), default: \'' + logfile + '\'')
    parser.add_argument(
        '--id',
        action='store_true',
        dest='id',
        help='Prints the board id')
    options = parser.parse_args()

    SetupLog(options.log_level, options.log_destination)
    if(options.id):
        print(DetectID(board))
    else:
        DetectBoard(board)


if __name__ == '__main__':
    main()
