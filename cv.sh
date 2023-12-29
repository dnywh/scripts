# Converts and compresses videos into a 'Converted' subfolder
# Designed for MOV -> MP4 screen recordings
# Change input format and compression value like so:
# cv.sh mp4 22

# Extension and CRF value as arguments
EXTENSION=${1:-mov}  # Default to 'mov' if no argument provided
CRF=${2:-28}         # Default to '28' if no argument provided

# Check if the 'Converted' folder exists, create it if not
if [ ! -d "Converted" ]; then
    mkdir "Converted"
fi

# Conversion process
for i in *.$EXTENSION; do 
    ffmpeg -i "$i" -vcodec libx264 -crf $CRF "Converted/${i%.*}.mp4"
done
