import os
import json
import time
import logging
import argparse
import configparser
import sys

from py_utils.igrill import IGrillPeripheral, IGrillMiniPeripheral
from py_utils.logging import SetupLog
from py_config.mac_config import ADDRESS

DATA_FILE = sys.path[0]+'/../run/igrill.json'


def main():
    config = configparser.ConfigParser()
    # does not throw an error, just returns the empty set if the file doesn't exist
    config.read(sys.path[0]+'/../config/iGrill_config.ini')
    meat_probe = config.getint("iGrill", "meat_probe", fallback=1)
    smoke_probe = config.getint("iGrill", "smoke_probe", fallback=4)
    poll_time = config.getint("iGrill", "poll_time", fallback=20)
    loglevel = config.get("iGrill", "log_level", fallback="INFO")
    logfile = config.get("iGrill", "log_file", fallback="")
    igrill_type = config.get("iGrill", "type", fallback="standard")

    parser = argparse.ArgumentParser(
        description='Connects to iGrill device and calls a script to process results')
    parser.add_argument(
        '--test',
        dest='test_mode',
        help='Test mode, do not run data.sh',
        action='store_true')
    parser.add_argument(
        '--once',
        dest='single_shot_mode',
        help='Run now, no wait, only once (implies test mode)',
        action='store_true')
    parser.add_argument(
        '--mini',
        dest='use_mini',
        help='Use an iGrill mini',
        action='store_true')
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
    options = parser.parse_args()

    SetupLog(options.log_level, options.log_destination)

    if (True == options.use_mini or "mini" == igrill_type):
        periph = IGrillMiniPeripheral(ADDRESS)
    else:
        periph = IGrillPeripheral(ADDRESS)

    try:
        if (True == options.single_shot_mode):
            sensor_data = {
                'temperature': periph.ReadTemperature(),
                'battery': periph.ReadBattery(),
            }
            logging.info('Sensor data: {}'.format(sensor_data))
        else:
            while True:
                if (int(time.time()) % poll_time) == 0:
                    sensor_data = {
                        'temperature': periph.ReadTemperature(),
                        'battery': periph.ReadBattery(),
                    }
                    if (True == options.test_mode):
                        logging.debug("Skipping data.sh call")
                    else:
                        os.system("./data.sh " +
                            str(sensor_data['battery']) + ' ' +
                            str(sensor_data['temperature'][meat_probe]) + ' ' +
                            str(sensor_data['temperature'][smoke_probe]))
                    if (True == options.test_mode):
                        logging.info("Skipping sensor data write.  Data: {}".format(sensor_data))
                    else:
                        logging.info('Writing sensor data: {}'.format(sensor_data))
                        with open(DATA_FILE, 'w') as f:
                            f.write(json.dumps(sensor_data))
                else:
                    time.sleep(0.5)
    except KeyboardInterrupt:
        logging.info("exiting")
    
if __name__ == '__main__':
    main()
