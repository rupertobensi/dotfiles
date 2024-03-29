#!/bin/sh

envFile=~/.config/polybar/polybar-scripts/redshift_env.sh
changeValue=100

changeMode() {
  sed -i "s/REDSHIFT=$1/REDSHIFT=$2/g" $envFile
  REDSHIFT=$2
  echo $REDSHIFT
}

changeTemp() {
  if [ "$2" -gt 1000 ] && [ "$2" -lt 25000 ]
  then
    sed -i "s/REDSHIFT_TEMP=$1/REDSHIFT_TEMP=$2/g" $envFile
    redshift -P -O $((REDSHIFT_TEMP+changeValue))
  fi
}

case $1 in
  toggle)
    if [ "$REDSHIFT" = on ];
    then
      xrandr --output DP-1 --brightness 1
      xrandr --output HDMI-1 --brightness 1
      changeMode "$REDSHIFT" off
      redshift -x
    else
      xrandr --output DP-1 --brightness 0.8
      xrandr --output HDMI-1 --brightness 0.8
      changeMode "$REDSHIFT" on
      redshift -O "$REDSHIFT_TEMP"
    fi
    ;;
  increase)
    changeTemp $((REDSHIFT_TEMP)) $((REDSHIFT_TEMP+changeValue))
    ;;
  decrease)
    changeTemp $((REDSHIFT_TEMP)) $((REDSHIFT_TEMP-changeValue));
    ;;
  temperature)
    case $REDSHIFT in
      on)
        printf " "
        # printf "%dK" "$REDSHIFT_TEMP"
        ;;
      off)
        printf " "
        # printf "off"
        ;;
    esac
    ;;
esac

