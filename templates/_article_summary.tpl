
	<section class="post clearfix">
		<a href="{{m.rsc[id].page_url }}" title="{{ m.rsc[id].title }}">
			{% image m.rsc[id].media[1] height=108 width=120 crop %}
		</a>
		<h1><a href="{{m.rsc[id].page_url }}">{{ m.rsc[id].title }}</a></h1>
		{% include "_article_meta.tpl" id=id %}
        <blockquote>
		<p class="summary">
			{{ m.rsc[id].summary|default:m.rsc[id].body|striptags|truncate:100 }} <a href="{{ m.rsc[id].page_url }}">{_ Read more _}&nbsp;&raquo;</a>
		</p>
        </blockquote>
	</section>

