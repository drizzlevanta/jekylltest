---
title: Collections
---
{% for tag in site.tags %}
[{{tag[0] | capitalize}}]({{site.baseurl}}/collections/{{tag[0]}})
{% endfor %}