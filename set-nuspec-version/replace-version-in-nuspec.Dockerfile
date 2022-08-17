FROM ubuntu:20.04

COPY replace-version-in-nuspec.sh /app/

RUN chmod +x /app/replace-version-in-nuspec.sh

ENTRYPOINT ["bash", "/app/replace-version-in-nuspec.sh"]
