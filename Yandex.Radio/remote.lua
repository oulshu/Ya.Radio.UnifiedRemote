local keyboard = libs.keyboard;

function toast ()
	if (settings.toast == "") then
		libs.server.update({
			type = "dialog",
			text = "Volume control requires that the player has focus. Click in the player window using the mouse remote once to focus the player.",
			title = "Volume",
			children = { { type = "button", text = "OK" } }
		});
		settings.toast = "true";
	end
end

--@help Launch Yandex.Radio
actions.launch = function()
	os.open("http://radio.yandex.ru");
end

--@help Lower volume
actions.volume_down = function()
	toast();
	keyboard.stroke("oem_minus");
end

--@help Raise volume
actions.volume_up = function()
	toast();
	keyboard.stroke("oem_plus");
end

--@help previous track
actions.previous = function()
	keyboard.stroke("K");
end

--@help Play next track
actions.next = function()
	keyboard.stroke("L");
end

--@help Toggle play/pause
actions.play_pause = function()
	keyboard.stroke("P");
end

--@help mute 
actions.mute = function()
	keyboard.stroke("O");
end

--@help like
actions.like=function()
	keyboard.stroke("F");
end

--@help dislike
actions.dislike= function()
	keyboard.stroke("D")
end
