// Simple js image swap, note file names

<script type="text/javascript" charset="utf-8">
  function swap_src(image_id,suffix) {
  	$(image_id).src = '/images/' + image_id + '_' + suffix + '.gif';
  }  
</script>

<li onmouseover="swap_src('image_name','over')" onmouseout="swap_src('image_name','nav')" ><a href="#"><img id="image_name" src="/images/image_name_nav.gif" alt="Image_name_nav"></a>