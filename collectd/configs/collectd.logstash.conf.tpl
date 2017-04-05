Hostname   "{{ HOSTNAME | default("collectd-docker") }}"
LoadPlugin interface
LoadPlugin load
LoadPlugin memory
LoadPlugin network
<Plugin interface>
    Interface "eth0"
    IgnoreSelected false
</Plugin>
<Plugin network>
    <Server "logstash" "25826">
    </Server>
</Plugin>
