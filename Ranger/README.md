# Ranger

For a terminal (and pretty much main) file manager I use ranger. Its a great, powerful and minimalistic program that makes the more complex file management loads easier.

## Theming

I use the [devicons](https://github.com/alexanderjeurissen/ranger_devicons) plugin to get nice icons based on the file-type before the filename.

### File Previews.

*I turned on pretty much all file previews possible. Still thinking about potential options for certain files. For example HTML files as page renders, text files as an actual preview of vim and album art for audio file. Unfortunately there isn't much info about this online so will have to figure it out myself.*

#### Required Programs

* [Poppler](https://poppler.freedesktop.org/)
* [W3m](http://w3m.sourceforge.net/)
* [Imagemagick](https://imagemagick.org/index.php)
* [Unrar](https://www.rarlab.com/rar_add.htm)
* [7z](http://p7zip.sourceforge.net/)
* [FFmpegthumbnailer](https://github.com/dirkvdb/ffmpegthumbnailer)
* [Pygments](https://pygments.org/)

#### Images

*All of the configurations below display their previews as images if you don't get this working don't bother with the rest*

The configuration for image previews I go with is the w3m mode. I do use URxvt as a terminal but for me that display mode glitches the terminal and makes the transparent background completely see-through for the preview panel. The w3m method doesn't have this problem.

Start by installing `w3m` on arch or `w3m-img` on \*buntu. When this is finished turn on the `preview_images` option in the [rc.conf file](rc.conf) (line 71). If the `use_preview_script` option (line 50) is set to `false` change that to `true` as well. After that set the `preview_images_method` option (line 109) to `w3m`. I didn't have to change the `w3m_delay` option but you might if the images are glitching out.

```shell
49| # Use the external preview script or display simple plain text or     image previews?
50| set use_preview_script true

[...]

70| # Use one of the supported image preview protocols
71| set preview_images true

[...]

109| set preview_images_method w3m
110|
111| # Delay in seconds before displaying an image with the w3m method    .
112| # Increase it in case of experiencing display corruption.
113| set w3m_delay 0.02
```

#### PDF

*In my setup displaying the text from a pdf only is a fallback. While it works I like having a preview of the actual pdf as it tends to reveal more information about it.*

All that's required for PDF image previews is to install [Poppler](https://poppler.freedesktop.org/) and uncomment some lines in the [scope.sh file](scope.sh). The lines are in the `handle_image()` function.

```shell
# PDF
application/pdf)
	pdftoppm -f 1 -l 1 \
			 -scale-to-x 1920 \
			 -scale-to-y -1 \
			 -singlefile \
			 -jpeg -tiffcompression jpeg \
			 -- "${FILE_PATH}" "${IMAGE_CACHE_PATH%.*}" \
		&& exit 6 || exit 1;;
```

#### SVG

To display SVG files as images you need to install [imagemagick](https://imagemagick.org/index.php) and uncomment the svg lines in the [scope.sh file](scope.sh) in the `handle_image()` function.

```shell
# SVG
image/svg+xml)
	convert "${FILE_PATH}" "${IMAGE_CACHE_PATH}" && exit 6
	exit 1;;
```

#### Video Thumbnails

*I changed the default command so that it prefers to use the embedded image. If you don't do this and use youtube-dl to embedded thumbnails into videos it won't show them properly, because it just takes a frame from the video.*

In order to get video thumbnails to show in ranger you need to install [ffmpegthumbnailer](https://github.com/dirkvdb/ffmpegthumbnaile). After that you need to uncomment the lines for video previewing and add the `-m` option to the `ffmpegthumbnailer` command. The section is located in the `handle_image()` function of the [scope.sh file](scope.sh).

```shell
# Video
video/*)
	Thumbnail
	ffmpegthumbnailer -m -i "${FILE_PATH}" -o "${IMAGE_CACHE_PATH}" -s 0 && exit 6
	exit 1;;
```








