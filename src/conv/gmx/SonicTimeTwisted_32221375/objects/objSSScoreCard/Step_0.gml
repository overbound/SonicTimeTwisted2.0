switch(state)
{
    case 5:
        // scroll away - scores
        title_offset1 -= 16;
        title_offset2 -= 16;
        // scroll away - message
        score_offset1 -= 16;
        score_offset2 -= 16;
        score_offset3 -= 16;
        score_offset4 -= 16;
        break;    
    case 6:
        // scroll away - scores
        if title_offset1 title_offset1 = max(title_offset1 - 16, 0);
        if title_offset2 title_offset2 = max(title_offset2 - 16, 0);
        if score_offset1 score_offset1 = max(score_offset1 - 16, 0);
        if score_offset2 score_offset2 = max(score_offset2 - 16, 0);
        break;    
    default:
        event_inherited();
        break;
}

