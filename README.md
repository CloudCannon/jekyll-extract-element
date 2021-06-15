# jekyll-extract-element

```liquid
{% assign items = content | extract_element: "h2" %}
<ul>
{% for item in items %}
    <ol>
        <a href="#{{ item.id }}">{{ item.text }}</a>
    </ol>
{% endfor %}
</ul>
```