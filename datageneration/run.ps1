$JOB_PARAMS = '--idx 2 --ishape 0 --stride 50'
$FFMPEG_PATH = 'C:\Users\sliay\Documents\dev\ffmpeg'
$PYTHON2_PATH = 'C:\Users\sliay\Documents\dev\Python\Python27'
$BLENDER_PATH = 'C:\Program Files\Blender Foundation\Blender'

$BUNDLED_PYTHON = $BLENDER_PATH + '2.78\python\bin'

$env:Path += ";"
$env:Path += $FFMPEG_PATH
# $cmd = $BLENDER_PATH + '\blender.exe -b -t 1 -P main_part1.py -- ' + $JOB_PARAMS
$cmd = $BLENDER_PATH + '\blender.exe'
$cmd_argument = '-b -P main_part1.py -- ' + $JOB_PARAMS
echo $cmd
echo $cmd_argument
Invoke-Expression "& `"$cmd`" $cmd_argument"