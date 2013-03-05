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



XPT contenttype " <meta http-equiv="Content-Type" content="...
<meta http-equiv="Content-Type" content="text/html; charset=`encoding^html_enc()^"/>


XPT title " <title>..</title>
<title>`title^expand('%:t:r')^</title>


XPT style " <style>..</style>
<style type="text/css" media="screen">
    `cursor^
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