import configparser
import os

master_ip = ''
slave_ip = ''
my_cnf_path = '/etc/my.cnf'
config = configparser.ConfigParser()
config.read(my_cnf_path)

# Check if the 'mysqld' section exists
if 'mysqld' not in config.sections():
    config.add_section('mysqld')

# Set the 'max_connections' option
config['mysqld']['server-id='] = '1'
