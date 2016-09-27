#Get prebuilts <= cm11
#echo "Getting prebuilts..."
#cd vendor/cm && ./get-prebuilts && cd ../..
#Compile
if [[ $# = 1 ]]; then
  . build/envsetup.sh
  if [[ $? = 0 ]]; then
    # Check local Java Development Kit
    if (( $(java -version 2>&1 | grep version | cut -f2 -d".") < 7 )); then
       echo "Request JDK >= 7 ..."
       exit
    fi
    case $1 in
    -u)
      lunch cm_kumquat-eng && mka bacon;
    ;;
    -ru)
      lunch cm_kumquat-userdebug && mka bacon;
    ;;
    -p)
      lunch cm_nypon-eng && mka bacon;
    ;;
    -rp)
      lunch cm_nypon-userdebug && mka bacon;
    ;;
    -s)
      lunch cm_pepper-eng && mka bacon;
    ;;
    -rs)
      lunch cm_pepper-userdebug && mka bacon;
    ;;
    -g)
      lunch cm_lotus-eng && mka bacon;
    ;;
    -rg)
      lunch cm_lotus-userdebug && mka bacon;
    ;;
    *)
      echo "ERROR: Unknow option";
      exit -1;
    ;;
    esac
  else
    echo "ERROR: . build/envsetup.sh falied"
    exit -1;
  fi
else
  echo "ERROR: Number of options not correct. Usage: ./CompileROM.sh -u | -p | -s | -g | -ru | -rp | -rs | -rg"
  exit -1;
fi
