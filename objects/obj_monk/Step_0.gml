/// @description Interact with sign post
// You can write your code in this editor

if (point_in_circle(obj_player.x, obj_player.y, x, y, 100))
{
    nearby = true;
    if (keyboard_check_pressed(ord("E")))
    {
        if (!instance_exists(textInstance))  // Check if obj_text instance exists
        {
            textInstance = instance_create_layer(x + 7, y - 100, layer, obj_text);
            if (currentDialogueIndex < array_length(dialogues))
            {
                textInstance.text = dialogues[currentDialogueIndex];
                textInstance.length = string_length(textInstance.text);

                // Set obj_camera's follow variable to textInstance.id
                obj_camera.follow = textInstance.id;

                currentDialogueIndex += 1;
            }
            else
            {
                // If dialogues are finished, reset currentDialogueIndex to restart
                currentDialogueIndex = 0;
            }
        }
    }
}
else
{
    nearby = false;
}
