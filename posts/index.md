---
layout: page
title: Blog
updated: 2023-08-11 15:24:00 +0200
---
<p>
{% for post in site.categories.essays %}
  {% unless post.draft %}
  {% assign currentdate = post.date | date: "%Y" %}
  {% if currentdate != date %}
    {% unless forloop.first %}</ul>{% endunless %}
    <h3>{{ currentdate }}</h3>
    <ul>
    {% assign date = currentdate %}
  {% endif %}
    <li><a href="{{ post.url }}">{{ post.title }}</a></li>
  {% if forloop.last %}</ul>{% endif %}
  {% endunless %}
{% endfor %}
</p>
<p><a href="{{ "/feed.xml" | prepend: site.baseurl }}">RSS</a> feed</p>
