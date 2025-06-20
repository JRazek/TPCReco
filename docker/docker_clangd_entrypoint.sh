mkdir -p /root_copy_docker/opt/tpcreco
mkdir -p /root_copy_docker/usr/local

#chown -R  /root_copy_docker/
chmod -R 755 /root_copy_docker/

cp -r /usr/include /root_copy_docker/usr/
cp -r /usr/local/include /root_copy_docker/usr/local/
