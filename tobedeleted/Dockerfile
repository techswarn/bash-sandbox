FROM webdevops/php-nginx:8.0
EXPOSE 80
COPY etc/supervisord.conf /opt/docker/etc/supervisor.conf

#CMD ["supervisord", "-c", "/opt/docker/etc/supervisor.conf"]
ENTRYPOINT ["/usr/bin/supervisord", "-n", "-c", "/opt/docker/etc/supervisor.conf"]
