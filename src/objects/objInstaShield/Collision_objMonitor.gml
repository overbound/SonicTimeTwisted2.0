monitor=other;
if script_exists(monitor.reaction_script)
    with (objLevel.player[0]) {
        script_execute(other.monitor.reaction_script,other.monitor, 2);
    }

