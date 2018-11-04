- ![{{ include.profile.fullname }}]({{ include.profile.img }} "{{ include.profile.fullname }}")
  * {{ include.profile.fullname }}{% if include.profile.goby %} (_{{ include.profile.goby }}_){% endif %}{% if include.profile.links %}
  * {% for lk in include.profile.links %}[{{ lk.title }}]({{ lk.url }}){% endfor %}{% endif %}
{% for aff in include.profile.affiliation %}  * {{ aff.org }}{% if aff.position %}, _{{ aff.position }}_{% endif %}{% endfor %}