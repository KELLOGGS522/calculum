SRC=src
LOCALPUB=public
REMOTEPUB=web-calculum@albert:/srv/calculum/data
RACOENV=.penv
RACOFLAGS=--batch --auto --skip-installed --no-docs

define USAGE
Build and publish the site.

Building:

    pollen      Compile Pollen files.
    clean       Remove compiled files.

Development:

    local	Copy compiled and static files to the local public directory.
    serve       Start a local web server.
    watch       Watch for changes and rebuild.
    draft       Combine 'serve' and 'watch'.

Publishing:

    diff        Compare local and remote public directories.
    publish     Copy local public files to the remote server.
endef
export USAGE

help:
	@echo "$$USAGE"

${RACOENV}/activate.sh:
	@echo "Installing Racket dependencies in ${RACOENV}/"
	raco pkg install ${RACOFLAGS} raco-pkg-env; \
	raco pkg-env ${RACOENV}; \
	. ${RACOENV}/activate.sh; \
	raco pkg install ${RACOFLAGS} \
	    gregor \
	    pollen

pollen: ${RACOENV}/activate.sh
	. ${RACOENV}/activate.sh; \
	raco pollen render ${SRC} 2>&1

clean: ${RACOENV}/activate.sh
	. ${RACOENV}/activate.sh; \
	raco pollen reset ${SRC}
	git clean -Xdf ${SRC}
	rm -rvf ${LOCALPUB}

local:
	rsync --itemize-changes --archive --copy-links --checksum \
	    --exclude=".*" --exclude="*.pm" --exclude="*.p" --exclude="*.rkt" \
	    --exclude="*.ptree" --exclude="compiled" \
	    ${SRC}/ ${LOCALPUB} \
	    | grep --invert-match "^\." || true

serve:
	python -mhttp.server 1337 --directory ${LOCALPUB} 2> /dev/null

watch:
	@echo "Watching for changes in ${SRC}/..."
	inotifywait --quiet --monitor --recursive --event close_write ${SRC} | \
	    while read -r path; do \
	        ${MAKE} --no-print-directory pollen; \
	        ${MAKE} --no-print-directory local; \
	        timeout 0.1s cat > /dev/null; \
	    done

draft: serve watch

diff:
	rsync --dry-run --itemize-changes --archive --delete --checksum \
	    ${LOCALPUB}/ ${REMOTEPUB} | grep --invert-match "^\." \
	    || echo "No changes to publish"

publish:
	rsync --compress --itemize-changes --archive --delete --checksum \
	    ${LOCALPUB}/ ${REMOTEPUB} | grep --invert-match "^\." \
	    || echo "No changes to publish"

.PHONY: all pollen clean \
	local serve watch draft \
	diff publish
.SILENT: ${RACOENV}/activate.sh all pollen clean \
	local serve watch draft \
	diff publish
