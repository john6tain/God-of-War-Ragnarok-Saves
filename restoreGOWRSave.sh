#!/bin/sh
uploadSave(){
	cp -r ~/Saved\ Games\/God\ of\ War\ Ragnarök ./
	git status
	git add .
	git commit -m "Upload save from PC";
	git push;
}

downloadSave(){
	git checkout .
	git pull;
	cp -r ./God\ of\ War\ Ragnarök ~/Saved\ Games\/
}

mainmenu () {
echo "1.Upload Save"
echo "2.Download Save"
read -n 1 -p ":" mainmenuinput

	if [ "$mainmenuinput" = "1" ]; then
	uploadSave;
	elif [ "$mainmenuinput" = "2" ]; then
	downloadSave;
	else
		echo "You have entered an invallid selection!"
        echo "Please try again!"
        echo ""
        echo "Press any key to continue..."
        read -n 1
        clear
        mainmenu
        fi
}

mainmenu;
read -p "Press enter to continue"