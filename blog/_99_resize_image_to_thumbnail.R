#- script para hacer un resize de las imagenes de los posts
#- las fotos de los post de ejemplos eran de 640x426

#- para hacer imagenes: https://www.craiyon.com/    https://huggingface.co/spaces/dalle-mini/dalle-mini

#- cojo el post mas moderno (x fecha)
# carpetas_de_posts <- fs::dir_ls(here::here("posts"), type = "directory")
# carpeta <- carpetas_de_posts[1] #- la ruta a la carpeta más antigua
# carpeta <- carpetas_de_posts[length(carpetas_de_posts)] #- la ruta a la carpeta más moderna

my_thumbnail <- here::here("blog", "thumbnails", "thumbnail_01_R-RStudio.png")

img <-  magick::image_read(my_thumbnail)
img_resized <- img |> magick::image_scale("740x426!")

#- guardo la foto reescalada a 640x427
magick::image_write(img_resized, my_thumbnail)
