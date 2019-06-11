set -e

sudo apt-get install python-pip -y

sudo pip install ansible==2.0.2.0

echo Installing Wishful
DIRECTORY=$(cd `dirname $0` && pwd)
echo $DIRECTORY

cd "$DIRECTORY/wishful"
ansible-playbook -i inventory install-wishful.yml
