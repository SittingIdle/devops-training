docker create --name xlr-data adejonge/xlr bash
docker run --volumes-from xlr-data --name xlr -d -p 4516:4516 adejonge/xlr
