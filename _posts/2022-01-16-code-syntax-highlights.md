---
layout: post
title: Code Syntax Highlights
authorU: _authors/xx.md
tags: nature plant yellow
---
Test rendering a code block with syntax highlighting. 

{% highlight ruby %}
def foo
    puts 'foo'
end
{% endhighlight %}

author is: {{page.by}}

See [author][author2]'s page.
{% assign pageAuthor=site.authors | where: "short_name", page.by |first %}
page author is: {{pageAuthor.url}}


[author]: {{site.baseurl}}{% link staff.html  %}
[author2]: {{site.baseurl}}{% link _authors/xx.md %}
