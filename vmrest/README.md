# vmrest

## config

  sudo vmrest -C   # admin/Huhj1234@
  echo -n 'admin:Huhj1234@' | base64 # YWRtaW46SHVoajEyMzRA

## start vmrest

- http server

  vmrest

- https server

  openssl req -x509 -newkey rsa:4096 -keyout workstationapi-key.pem -out workstationapi-cert.pem -days 365 -nodes
  vmrest -c ${PWD}/certs/workstationapi-cert.pem -k ${PWD}/certs/workstationapi-key.pem -d

## curl test

  url="https://127.0.0.1:8697/api/vms"
  token=$(echo -n 'admin:Huhj1234@' | base64)

  curl $url -k -u 'admin:Huhj1234@'

  curl $url -k -H "Authorization: Basic $token"
  curl "$url/8QRKUIB4PFNUS61LKI2ALGPC5G5S65NH" -k -H "Authorization: Basic $token"
    {
      "id": "8QRKUIB4PFNUS61LKI2ALGPC5G5S65NH",
      "cpu": {
        "processors": 2
      },
      "memory": 768
    }
