FROM node:22

WORKDIR /app

ENTRYPOINT ["/bin/sh", "-c", "if [ -f /app/package.json ]; then npm run dev -- --host; else echo 'package.json not found, skipping installation and start.'; tail -f /dev/null; fi"]
