PROJECT=rust_doc_test
doc:
	cargo doc --no-deps
	rm -rf ./docs
	echo "<meta http-equiv=\"refresh\" content=\"0; url=${PROJECT}\">" > target/doc/index.html
	cp -r target/doc ./docs
