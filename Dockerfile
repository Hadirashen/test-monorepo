FROM ghcr.io/xtls/xray-core:latest
COPY config.json /etc/xray/config.json
CMD ["xray", "run", "-config", "/etc/xray/{
  "inbounds": [{
    "port": 8080,
    "protocol": "vless",
    "settings": {
      "clients": [{"id": "YOUR-UUID"}],
      "decryption": "none"
    },
    "streamSettings": {
      "network": "ws",
      "wsSettings": {"path": "/your-path"}
    }
  }],
  "outbounds": [{"protocol": "freedom"}]
}"]
