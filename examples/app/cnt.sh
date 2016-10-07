#!/usr/bin/env nash

import cnt/all

fn dist(obj, imgpath) {
	cp -v ./app $imgpath+"/app"

	return "0"
}

imgid <= cnt_image_create($dist)

printf "Image created: %s\n" $imgid
