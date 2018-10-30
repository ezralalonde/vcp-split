inputFile=$1
inputVideo=$(head -n 1 "${inputFile}")
counter=${3:0}
outputDir="$2"
mkdir -p "$outputDir"
sed 1d < $inputFile | while IFS=$'\t' read -r -a arr
do
    startTime=${arr[0]}
    endTime=${arr[1]}
    outputFile="`printf "%02d" $counter` ${arr[3]:1:-1}.mp4"
    echo "'$inputVideo' to '$outputDir/$outputFile'"

    ffmpeg -nostats -hide_banner -v quiet -i "${inputVideo}" -ss $startTime -to $endTime "$outputDir/$outputFile" >/dev/null 2>&1 </dev/null
    counter=$((counter + 1))
done
