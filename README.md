# backburn

> Backblaze B2 Proxy

## exec

    $ B2_ID=1234567890 \
      B2_KEY=qwertyuiopasdfghjklzxcvbnm1234567890 \
      B2_BUCKET=bucket-name \
      PORT=3000 \
      backburn
      
## docker

    $ docker run \
      -e B2_ID=1234567890 \
      -e B2_KEY=qwertyuiopasdfghjklzxcvbnm1234567890 \
      -e B2_BUCKET=bucket-name \
      -e PORT=3000 \
      -p 3000:3000 \
      bencevans/backburn
