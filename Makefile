TRITON_VERSION=22-11
TRITON_FOLDER=triton_${TRITON_VERSION}

.PHONY: upload-add10
upload-add10:
	gsutil cp -R add10 gs://seldon-models/scv2/samples/${TRITON_FOLDER}

.PHONY: upload-mul10
upload-mul10:
	gsutil cp -R mul10 gs://seldon-models/scv2/samples/${TRITON_FOLDER}

.PHONY: upload-conditional
upload-conditional:
	gsutil cp -R conditional gs://seldon-models/scv2/samples/${TRITON_FOLDER}


.PHONY: upload-all
upload-all: upload-add10 upload-mul10 upload-conditional

