function scrRestart() {
	room_restart()
	event_perform_object(oGameController, ev_create, 0)
}