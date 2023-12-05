rolled = false;
lines = false;

lines[0, 0] = "SONIC TIME TWISTED";

lines[1, 0] = "ORIGINAL TEAM";

lines[2, 0] = "Game by";
lines[2, 1] = "Bryce Stock (Overbound)";

lines[3, 0] = "Programmed by";
lines[3, 1] = "Bryce Stock (Overbound)";
lines[3, 2] = "Devin Reeves (Mercury)";
lines[3, 3] = "Joevan Salmon-Johnson (VectorSatyr)";

lines[4, 0] = "Game Art by";
lines[4, 1] = "Bryce Stock (Overbound)";
lines[4, 2] = "Dee Liteyears";

lines[5, 0] = "Music by";
lines[5, 1] = "Hinchy";

lines[6, 0] = "Level Design by";
lines[6, 1] = "Bryce Stock (Overbound)";
lines[6, 2] = "Shane (Sparks)";

lines[7, 0] = "Concepts from";
lines[7, 1] = "Bryce Stock (Overbound)";
lines[7, 2] = "Debra Ann";
lines[7, 3] = "Devin Reeves (Mercury)";
lines[7, 4] = "Hinchy";
lines[7, 5] = "Joevan Salmon-Johnson (VectorSatyr)";
lines[7, 6] = "Jonathan Rose (Dimension Warped)";
lines[7, 7] = "Shane (Sparks)";
lines[7, 8] = "Tommy C";

lines[8, 0] = "Additional Programming by";
lines[8, 1] = "Jonathan Rose (Dimension Warped)";
lines[8, 2] = "Hector Barreiro (Damizean)";
lines[8, 3] = "Will (Polar Exelion)";

lines[9, 0] = "Additional Music by";
lines[9, 1] = "Andy Tunstall";
lines[9, 2] = "Christopher Wright (LarkSS)";
lines[9, 3] = "Jameson Sutton";
lines[9, 4] = "Joshua Kruszyna (EXShad)";

lines[10, 0] = "Additional Art by";
lines[10, 1] = "Andrew75";
lines[10, 2] = "Andy Tunstall";
lines[10, 3] = "Apricity";
lines[10, 4] = "BlazefireLP";
lines[10, 5] = "Devin Reeves (Mercury)";
lines[10, 6] = "GameNerd Advance";
lines[10, 7] = "Hyper Emerson";
lines[10, 8] = "Kamon62";
lines[10, 9] = "Pepijn Ryngaert (Gardow)";
lines[10, 10] = "Shane (Sparks)";
lines[10, 11] = "SonicGenesis89";
lines[10, 12] = "Sabrina DiDuro (Strife)";
lines[10, 13] = "Stevingesus";
lines[10, 14] = "Vexer";

lines[11, 0] = "Resources from";
lines[11, 1] = "Sonic Fan Games HQ";
lines[11, 2] = "Sonic Retro";
lines[11, 3] = "The Spriters Resource";
lines[11, 4] = "The Mystical Forest Zone";
lines[11, 5] = "Toei Animation";

lines[12, 0] = "Special Thanks";
lines[12, 1] = "Damizean";
lines[12, 2] = "Ricardo Elso";
lines[12, 3] = "Rael";
lines[12, 4] = "Flare";
lines[12, 5] = "Shard";
lines[12, 6] = "Icuurd8b42";
lines[12, 7] = "Chimpo";
lines[12, 8] = "RogueYoshi";
lines[12, 9] = "TheouAegis";
lines[12, 10] = "Sega Scourge";
lines[12, 11] = "Slingerland";
lines[12, 12] = "Andrew75";
lines[12, 13] = "SuperBliz";
lines[12, 14] = "Debra Ann";
lines[12, 15] = "Joe Pierce";
lines[12, 16] = "Noah Copeland";

lines[13, 0] = "CONTRIBUTORS";

lines[14, 0] = "Additional Programming by";
lines[14, 1] = "Alex Khayrullin";
lines[14, 2] = "Nik";
lines[14, 3] = "TabularElf";

lines[15, 0] = "Additional Art by";
lines[15, 1] = "Alex Khayrullin";
lines[15, 2] = "bennascar";
lines[15, 3] = "Romulo Santos";

lines[16, 0] = "LOCALIZATION";

// Inject localization authors
var languages = tr_get_language_codes();

for(var l = 0; l < array_length(languages); l++) {
    if (languages[l] != "en") {
        var array_index = array_length(lines);
        lines[array_index, 0] = tr_get_lang_creditsname(languages[l]);
        lines[array_index, 1] = tr_get_lang_authors(true, languages[l]);    
        var contrib = tr_get_lang_authors(false, languages[l])
        if (contrib != "") {
            var contrib_counter = 2;
            while (string_pos(",", contrib)) {
                lines[array_index, contrib_counter] = string_copy(contrib, 0, string_pos(",", contrib) - 1);
                contrib = string_copy(contrib, string_pos(",", contrib) + 1, string_length(contrib) - string_pos(",", contrib) - 1)
            }
            lines[array_index, contrib_counter] = contrib;  
        }
    }
    
}

// the array above is designed to be easy to edit, now we're converting it to the format we'll actually use
event_user(0);

// calculating the speed and width of the credits
// We're cheating a bit: we know that a letter with the standard font is 9 pixels wide
var width = 0;
lines_count = array_length(lines)+ 8;
for(var i = 0; i < array_length(lines); i++)
{
    width = max(width, 1+8*string_length(lines[i]));
}
center_offset = (width div 2);
cursor = 0;
displayed_label = false;
displayed_label_is_title = false;
displayed_label_is_only_title = false;
for(var i = 0; i < 7; i++)
{
    displayed_label[i] = "";
    displayed_label_is_title[i] = false;
    displayed_label_is_only_title[i] = false;
}

// in the first released version, the credits lasted for 4200 steps
alarm_delay = round(4200/lines_count);
// should be a multiple of 18, otherwise credits will visibly skip pixels
alarm_delay = round(alarm_delay/18)*18;
// add an empty screen
lines_count += array_length(displayed_label);
// the first line will be delayed, in order to make the pauses at the beginning and the 
// end match as much as possible
// use max() in case the resulting value runs close to being negative, which depends on the number of items
alarm[0] = alarm_delay + max(0, (4200 - lines_count * alarm_delay));
// the length of the credits is 4200 frames, or 70 seconds

