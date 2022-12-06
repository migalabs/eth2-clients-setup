export $(grep -v '^#' .env | xargs)
sudo docker run --network=host -v ${LH_DATA_FOLDER}/.lighthouse:/root/.lighthouse sigp/lighthouse:v3.1.2 lighthouse bn --checkpoint-sync-url="$1"