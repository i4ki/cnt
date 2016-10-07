# tar helper functions

# Return the files archived
fn cnt_tar_info(tarfile) {
	IFS = ("\n")

	files <= tar -tf $tarfile

	return $files
}

# Print the files archived in stdout
fn cnt_tar_show(tarfile) {
	files <= cnt_tar_info($tarfile)

	for f in $files {
		printf "%s\n" $f
	}
}

fn cnt_untar(tarfile, dest) {
	if is_dir($dest) != "0" {
		mkdir -p $dest
	}

	tar xf $tarfile -C $dest
}

fn cnt_tar(tarFile, dir) {
	tar cvf $tarFile $dir
}
