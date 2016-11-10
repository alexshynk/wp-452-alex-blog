set @new_url = 'http://new_domain'; -- нова ulr адреса кореня сайту
set @old_url = 'http://localhost/WordPress/wp-452-alex-blog/wp-452'; -- стара url адреса кореня сайту
UPDATE wp_options SET option_value = REPLACE(option_value, @old_url, @new_url) where option_name='siteurl' or option_name='home';
UPDATE wp_postmeta SET meta_value = REPLACE(meta_value, @old_url, @new_url);
UPDATE wp_posts SET guid = REPLACE(guid, @old_url, @new_url);
UPDATE wp_posts SET post_content = REPLACE(post_content, @old_url, @new_url);