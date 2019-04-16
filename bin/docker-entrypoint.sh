#!/bin/sh

[[ -z "${HTTP_PORT}" ]] && HttpPort=3000 || HttpPort="${HTTP_PORT}"

bundle exec puma -p $HttpPort
