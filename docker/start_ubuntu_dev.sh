docker run -v $MAC_LOCAL_LOCATION/v8:/root/v8 -v $MAC_LOCAL_LOCATION/depot_tools:/root/depot_tools -v $MAC_LOCAL_LOCATION/v8_app:/root/v8_app -t -i --name ubuntu_instance ubuntu_dev /bin/bash
