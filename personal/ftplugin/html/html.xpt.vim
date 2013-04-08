XPTemplate priority=personal

XPT html " <html><head>..<head><body>...
<!DOCTYPE html>
<html>
    `:head:^
    <body>
        `cursor^
    </body>
</html>

XPT head " <head>..</head>
<head>
    `:contenttype:^
    `:title:^
</head>

XPT bc " Django content block {% block content ...
{%block content %}
  `cursor^
{% endblock %}

XPT bif " Django If {% if value %} ...
{% if `value^ `operator^ `condition^ %}
  `cursor^
{% endif %}

XPT bifel  " Django if - else {% if value %} {% else...
{% if `value^ `operator^ `condition^ %}
  `cursor^
{% else %}
  
{% endif %}

XPT bifelif  " Django if - else {% if value %} {% else...
{% if `value1^ `operator1^ `condition1^ %}
  `cursor^
{% elif `value2^ `operator2^ `condition2^%}
  
{% endif %}

XPT bvar "Django variable {{ value }}
{{ `value^ }} `cursor^

XPT baddelif " Django add elif {% elif ...
{% elif `value^ `operator^ `condition^ %}
  `cursor^

XPT bfor " Django For {% for i in ....
{% for `value^ in `list^ %}
  `cursor^
{% endfor %}

XPT to " <!--TODO -  -->
<!--TODO - `cursor^  -->

XPT fx " <!--FIXME - -->
<!--FIXME - `cursor^ -->

XPT contenttype " <meta http-equiv="Content-Type" content="...
<meta http-equiv="Content-Type" content="text/html; charset=`encoding^html_enc()^"/>


XPT title " <title>..</title>
<title>`title^expand('%:t:r')^</title>


XPT style " <style>..</style>
<style type="text/css" media="screen">
    `cursor^{
    `property^: `value^;
    }
</style>


XPT meta " <meta ..>
<meta name="`meta_name^" content="`meta_content^" />


XPT link " <link rel=".." ..>
<link rel="`stylesheet^" type="`type^text/css^" href="`url^" />


XPT script " <script language="javascript"...
<script language="javascript" type="text/javascript">
    `cursor^
</script>
..XPT

XPT scriptsrc " <script .. src=...
<script language="javascript" type="text/javascript" src="`js^"></script>

XPT func " function ..( .. ): ... Personal
function `name^(`input^) {
    /*.`name^:  `comment^
      *
      * Arguments:
      *    `input^
      * Return:
      *    `return values^
      */
      `cursor^;
}
