import os
import json
import argparse

def get_args():
    parser = argparse.ArgumentParser()
    parser.add_argument('--psql',
            help='Return cmd to connect to postgres',
            action='store_true',
            )
    parser.add_argument('--redis',
            help='Return cmd to connect to redis',
            action='store_true',
            )
    return parser.parse_args()

def get_redis_cmd(vcap):
    if 'predix-cache' in vcap:
        cache = vcap['predix-cache'][0]['credentials']
        return "redis-cli -h {} -p {} -a {}".format(
                cache['host'],
                cache['port'],
                cache['password']
                )

def get_psql_cmd(vcap):
    if 'postgres-2.0' in vcap:
        postgres = vcap['postgres-2.0'][0]['credentials']
        return "psql {}".format(
                postgres['uri']
                )

if __name__ == '__main__':
    args = get_args()
    vcap = json.loads(os.environ['VCAP_SERVICES'])

    if args.redis:
        print(get_redis_cmd(vcap))

    if args.psql:
        print(get_psql_cmd(vcap))
