//Receiving inputs
rightKey = keyboard_check(vk_right);
leftKey = keyboard_check(vk_left);

//X Movement
	//Directions
	getDir = rightKey - leftKey;

	// Get xSpeed
	xSpeed = getDir * moveSpeed;

	// X collision
	var _subPixel = 0.5;
	if place_meeting( x + xSpeed, y, Wall1)
	{
		// Scoot up to wall precisely
		var _pixelCheck  = _subPixel * sign(xSpeed);
	
		while !place_meeting(x + _pixelCheck, y , Wall1)
		{
			x += _pixelCheck
		}
		// Set xSpeed to zero to "Collide"
		xSpeed = 0;
	}

	//Move
	x += xSpeed;