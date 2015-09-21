docker create --name xlr-data adejonge/xlr bash
docker run --volumes-from xlr-data --name xlr -d -p 5516:5516 adejonge/xlr
