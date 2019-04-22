 #!/bin/bash

cp -r ranger /home/workingdodo/.config

cp .Xresources /home/workingdodo/.Xresources

cp dunstrc /home/workingdodo/.config/dunst/

cp compton.conf /home/workingdodo/.config/compton.conf

cp polybar/modules.conf /home/workingdodo/.config/polybar/

cp polybar/master.conf /home/workingdodo/.config/polybar/

cp polybar/modules/* /home/workingdodo/.config/polybar/modules/

cd Desktop

cp config /home/workingdodo/.i3/

cp polybar/config /home/workingdodo/.config/polybar/

cd ..

cp .Xresources /home/workingdodo

cp -r .fonts /home/workingdodo

echo "Updated."

exit 0




