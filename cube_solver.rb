def showcube(upface, leftface, frontface, rightface, backface, downface)
	for i in 0..2 do
		print "          "
		for j in 0..2 do
			print "#{upface[i][j]} "
		end
		puts
	end
	puts
	for i in 0..2 do
		for j in 0..2 do
			print "#{leftface[i][j]} "
		end
		for j in 0..2 do
			print " #{frontface[i][j]}"
		end
		print " "
		for j in 0..2 do
			print " #{rightface[i][j]}"
		end
		print " "
		for j in 0..2 do
			print " #{backface[i][j]}"
		end
		puts
	end
	puts
	for i in 0..2 do
		print "          "
		for j in 0..2 do
			print "#{downface[i][j]} "
		end
		puts
	end
	puts "____________________________"
end

def R(upface, leftface, frontface, rightface, backface, downface)
	temp = []
	count = 2
	for i in 0..2 do
		temp[i] = upface[i][2]
		upface[i][2] = frontface[i][2]
		frontface[i][2] = downface[i][2]
		downface[i][2] = backface[count][0]
		backface[count][0] = temp[i]
		count = count - 1
	end
	clockwise(rightface)
	puts "Right Face Up"
end

def Ri(upface, leftface, frontface, rightface, backface, downface)
	temp = []
	count = 2
	for i in 0..2 do
		temp[i] = downface[i][2]
		downface[i][2] = frontface[i][2]
		frontface[i][2] = upface[i][2]
		upface[i][2] = backface[count][0]
		backface[count][0] = temp[i]
		count = count-1
	end
	counterclockwise(rightface)
	puts "Right Face Down"
end

def L(upface, leftface, frontface, rightface, backface, downface)
	temp = []
	count = 2
	for i in 0..2 do
		temp[i] = downface[i][0]
		downface[i][0] = frontface[i][0]
		frontface[i][0] = upface[i][0]
		upface[i][0] = backface[count][2]
		backface[count][2] = temp[i]
		count = count-1
	end
	clockwise(leftface)
	puts "Left Face Down"
end

def Li(upface, leftface, frontface, rightface, backface, downface)
	temp = []
	count = 2
	for i in 0..2 do
		temp[i] = upface[i][0]
		upface[i][0] = frontface[i][0]
		frontface[i][0] = downface[i][0]
		downface[i][0] = backface[count][2]
		backface[count][2] = temp[i]
		count = count-1
	end
	counterclockwise(leftface)
	puts "Left Face Up"
end

def B(upface, leftface, frontface, rightface, backface, downface)
	temp = []
	count = 2
	for i in 0..2 do
		temp[i] = downface[2][i]
		downface[2][i] = leftface[i][0]
		leftface[i][0] = upface[0][count]
		upface[0][count] = rightface[count][2]
		rightface[count][2] = temp[i]
		count = count - 1
	end
	clockwise(backface)
	puts "Back Face Counter Clockwise"
end

def Bi(upface, leftface, frontface, rightface, backface, downface)
	temp = []
	count = 2
	for i in 0..2 do
		temp[i] = downface[2][i]
		downface[2][i] = rightface[count][2]
		rightface[count][2] = upface[0][count]
		upface[0][count] = leftface[i][0]
		leftface[i][0] = temp[i]
		count = count - 1
	end
	counterclockwise(backface)
	puts "Back Face Clockrwise"
end

def D(upface, leftface, frontface, rightface, backface, downface)
	temp = []
	for i in 0..2 do
		temp[i] = frontface[2][i]
		frontface[2][i] = leftface[2][i]
		leftface[2][i] = backface[2][i]
		backface[2][i] = rightface[2][i]
		rightface[2][i] = temp[i]
	end
	clockwise(downface)
	puts "Down Face Right"
end

def Di(upface, leftface, frontface, rightface, backface, downface)
	temp = []
	for i in 0..2 do
		temp[i] = frontface[2][i]
		frontface[2][i] = rightface[2][i]
		rightface[2][i] = backface[2][i]
		backface[2][i] = leftface[2][i]
		leftface[2][i] = temp[i]
	end
	counterclockwise(downface)
	puts "Down Face Left"
end

def F(upface, leftface, frontface, rightface, backface, downface)
	temp = []
	count = 2
	for i in 0..2 do
		temp[i] = downface[0][i]
		downface[0][i] = rightface[count][0]
		rightface[count][0] = upface[2][count]
		upface[2][count] = leftface[i][2]
		leftface[i][2] = temp[i]
		count = count - 1
	end
	clockwise(frontface)
	puts "Front Face Clockwise"
end

def Fi(upface, leftface, frontface, rightface, backface, downface)
	temp = []
	count = 2
	for i in 0..2 do
		temp[i] = downface[0][i]
		downface[0][i] = leftface[i][2]
		leftface[i][2] = upface[2][count]
		upface[2][count] = rightface[count][0]
		rightface[count][0] = temp[i]
		count = count - 1
	end
	counterclockwise(frontface)
	puts "Front Face Counter Clockwise"
end

def U(upface, leftface, frontface, rightface, backface, downface)
	temp = []
	for i in 0..2 do
		temp[i] = frontface[0][i]
		frontface[0][i] = rightface[0][i]
		rightface[0][i] = backface[0][i]
		backface[0][i] = leftface[0][i]
		leftface[0][i] = temp[i]
	end
	clockwise(upface)
	puts "Up Face Left"
end

def Ui(upface, leftface, frontface, rightface, backface, downface)
	temp = []
	for i in 0..2 do
		temp[i] = frontface[0][i]
		frontface[0][i] = leftface[0][i]
		leftface[0][i] = backface[0][i]
		backface[0][i] = rightface[0][i]
		rightface[0][i] = temp[i]
	end
	counterclockwise(upface)
	puts "Up Face Right"
end

def cubeup(upface, leftface, frontface, rightface, backface, downface)
	R(upface, leftface, frontface, rightface, backface, downface)
	Li(upface, leftface, frontface, rightface, backface, downface)
	temp = []
	count = 2
	for i in 0..2 do
		temp[i] = frontface[i][1]
		frontface[i][1] = downface[i][1]
		downface[i][1] = backface[count][1]
		backface[count][1] = upface[i][1]
		upface[i][1] = temp[i]
		count = count - 1
	end
	puts "Mid Layer Up"
end

def cubedown(upface, leftface, frontface, rightface, backface, downface)
	Ri(upface, leftface, frontface, rightface, backface, downface)
	L(upface, leftface, frontface, rightface, backface, downface)
	temp = []
	count = 2
	for i in 0..2 do
		temp[i] = frontface[i][1]
		frontface[i][1] = upface[i][1]
		upface[i][1] = backface[count][1]
		backface[count][1] = downface[i][1]
		downface[i][1] = temp[i]
		count = count - 1
	end
	puts "Mid Layer Down"
end

def cuberight(upface, leftface, frontface, rightface, backface, downface)
	Ui(upface, leftface, frontface, rightface, backface, downface)
	D(upface, leftface, frontface, rightface, backface, downface)
	temp = []
	for i in 0..2 do
		temp[i] = frontface[1][i]
		frontface[1][i] = leftface[1][i]
		leftface[1][i] = backface[1][i]
		backface[1][i] = rightface[1][i]
		rightface[1][i] = temp[i]
	end
	puts "Mid Layer Right"
end

def cubeleft(upface, leftface, frontface, rightface, backface, downface)
	U(upface, leftface, frontface, rightface, backface, downface)
	Di(upface, leftface, frontface, rightface, backface, downface)
	temp = []
	for i in 0..2 do
		temp[i] = frontface[1][i]
		frontface[1][i] = rightface[1][i]
		rightface[1][i] = backface[1][i]
		backface[1][i] = leftface[1][i]
		leftface[1][i] = temp[i]
	end
	puts "Mid Layer Left"
end

def cubeclockwise(upface, leftface, frontface, rightface, backface, downface)
	Bi(upface, leftface, frontface, rightface, backface, downface)
	F(upface, leftface, frontface, rightface, backface, downface)
	temp = []
	count = 2
	for i in 0..2 do
		temp[i] = upface[1][i]
		upface[1][i] = leftface[count][1]
		leftface[count][1] = downface[1][count]
		downface[1][count] = rightface[i][1]
		rightface[i][1] = temp[i]
		count = count - 1
	end
	puts "Cube Clockwise"
end

def cubecounterclockwise(upface, leftface, frontface, rightface, backface, downface)
	B(upface, leftface, frontface, rightface, backface, downface)
	Fi(upface, leftface, frontface, rightface, backface, downface)
	temp = []
	count = 2
	for i in 0..2 do
		temp[i] = upface[1][i]
		upface[1][i] = rightface[i][1]
		rightface[i][1] = downface[1][count]
		downface[1][count] = leftface[count][1]
		leftface[count][1] = temp[i]
		count = count - 1
	end
	puts "Cube Counter Clockwise"
end

def clockwise(face)
	temp = []
	for i in 0..2 do
		temp[i] = []
		for j in 0..2 do
			temp[i][j] = face[i][j]
		end
	end
	for i in 0..2 do
		count = 2
		for j in 0..2 do
			face[i][j] = temp[count][i]
			count = count - 1
		end
	end
	
end

def counterclockwise(face)
	temp = []
	for i in 0..2 do
		temp[i] = []
		for j in 0..2 do
			temp[i][j] = face[i][j]
		end
	end
	count = 2
	for i in 0..2 do
		for j in 0..2 do
			face[i][j] = temp[j][count]
		end
		count = count - 1
	end
end
#--FIM FUNÇÕES--

frontface = []
backface = []
upface = []
downface = []
rightface = []
leftface = []
for i in 0..2 do
	frontface[i] = []
	backface[i] = []
	upface[i] = []
	downface[i] = []
	rightface[i] = []
	leftface[i] = []
end

puts "Blue = b"
puts "Green = g"
puts "Orange = o"
puts "Red = r"
puts "White = w"
puts "Yellow = y"
puts
puts "Front Face"
for i in 0..2 do
	for j in 0..2 do
		puts "Row #{i+1}, Column #{j+1}: "
		frontface[i][j] = gets.chomp
	end
end
puts
puts "Up Face"
for i in 0..2 do
	for j in 0..2 do
		puts "Row #{i+1}, Column #{j+1}: "
		upface[i][j] = gets.chomp
	end
end
puts
puts "Down Face"
for i in 0..2 do
	for j in 0..2 do
		puts "Row #{i+1}, Column #{j+1}: "
		downface[i][j] = gets.chomp
	end
end
puts
puts "Right Face"
for i in 0..2 do
	for j in 0..2 do
		puts "Row #{i+1}, Column #{j+1}: "
		rightface[i][j] = gets.chomp
	end
end
puts
puts "Left Face"
for i in 0..2 do
	for j in 0..2 do
		puts "Row #{i+1}, Column #{j+1}: "
		leftface[i][j] = gets.chomp
	end
end
puts
puts "Back Face"
for i in 0..2 do
	for j in 0..2 do
		puts "Row #{i+1}, Column #{j+1}: "
		backface[i][j] = gets.chomp
	end
end

showcube(upface, leftface, frontface, rightface, backface, downface)
#WHITE ON TOP
if leftface[1][1] == "w" then
	cubeclockwise(upface, leftface, frontface, rightface, backface, downface)
elsif frontface[1][1] == "w" then
	cubeup(upface, leftface, frontface, rightface, backface, downface)
elsif rightface[1][1] == "w" then
	cubecounterclockwise(upface, leftface, frontface, rightface, backface, downface)
elsif backface[1][1] == "w" then
	cubedown(upface, leftface, frontface, rightface, backface, downface)
elsif downface[1][1] == "w" then
	cubeup(upface, leftface, frontface, rightface, backface, downface)
	cubeup(upface, leftface, frontface, rightface, backface, downface)
end

showcube(upface, leftface, frontface, rightface, backface, downface)

#WHITE CROSS ON TOP

while (upface[0][1] != "w" || upface[1][0] != "w" || upface[1][2] != "w" || upface[2][1] != "w") do
	cuberight(upface, leftface, frontface, rightface, backface, downface)
	if (frontface[0][1] == "w") then
		F(upface, leftface, frontface, rightface, backface, downface)
		while (frontface[1][2] == "w") do
			Ui(upface, leftface, frontface, rightface, backface, downface)
			if (upface[1][2] != "w") then
				R(upface, leftface, frontface, rightface, backface, downface)
			end
		end
	end

	if (frontface[1][2] == "w") then
		while (frontface[1][2] == "w") do
			Ui(upface, leftface, frontface, rightface, backface, downface)
			if (upface[1][2] != "w") then
				R(upface, leftface, frontface, rightface, backface, downface)
			end
		end
	end

	if (frontface[1][0] == "w") then
		while (frontface[1][0] == "w") do
			Ui(upface, leftface, frontface, rightface, backface, downface)
			if (upface[1][0] != "w") then
				Li(upface, leftface, frontface, rightface, backface, downface)
			end
		end
	end

	if (frontface[2][1] == "w") then
		F(upface, leftface, frontface, rightface, backface, downface)
		while (frontface[1][0] == "w") do
			Ui(upface, leftface, frontface, rightface, backface, downface)
			if (upface[1][0] != "w") then
				Li(upface, leftface, frontface, rightface, backface, downface)
			end
		end
	end

	if (downface[0][1] == "w") then
		D(upface, leftface, frontface, rightface, backface, downface)
		while (downface[1][2] == "w") do
			Ui(upface, leftface, frontface, rightface, backface, downface)
			if (upface[1][2] != "w") then
				R(upface, leftface, frontface, rightface, backface, downface)
				R(upface, leftface, frontface, rightface, backface, downface)
			end
		end
	end

	if (downface[1][2] == "w") then
		while (downface[1][2] == "w") do
			Ui(upface, leftface, frontface, rightface, backface, downface)
			if (upface[1][2] != "w") then
				R(upface, leftface, frontface, rightface, backface, downface)
				R(upface, leftface, frontface, rightface, backface, downface)
			end
		end
	end

	if (downface[1][0] == "w") then
		while (downface[1][0] == "w") do
			Ui(upface, leftface, frontface, rightface, backface, downface)
			if (upface[1][0] != "w") then
				Li(upface, leftface, frontface, rightface, backface, downface)
				Li(upface, leftface, frontface, rightface, backface, downface)
			end
		end
	end

	if (downface[2][1] == "w") then
		D(upface, leftface, frontface, rightface, backface, downface)
		while (downface[1][0] == "w") do
			Ui(upface, leftface, frontface, rightface, backface, downface)
			if (upface[1][0] != "w") then
				Li(upface, leftface, frontface, rightface, backface, downface)
				Li(upface, leftface, frontface, rightface, backface, downface)
			end
		end
	end
end

showcube(upface, leftface, frontface, rightface, backface, downface)

#MATCHING EDGES
while (frontface[0][1] != frontface[1][1] || rightface[0][1] != rightface[1][1] || backface[0][1] != backface[1][1] || leftface[0][1] != leftface[1][1]) do
	if ((frontface[0][1] == frontface[1][1]) || (frontface[0][1] == leftface[1][1])) then
		cuberight(upface, leftface, frontface, rightface, backface, downface)
	elsif (frontface[0][1] == rightface[1][1]) then
		Ri(upface, leftface, frontface, rightface, backface, downface)
		Ui(upface, leftface, frontface, rightface, backface, downface)
		R(upface, leftface, frontface, rightface, backface, downface)
		U(upface, leftface, frontface, rightface, backface, downface)
		Ri(upface, leftface, frontface, rightface, backface, downface)
	elsif (frontface[0][1] == backface[1][1]) then
		L(upface, leftface, frontface, rightface, backface, downface)
		L(upface, leftface, frontface, rightface, backface, downface)
		R(upface, leftface, frontface, rightface, backface, downface)
		R(upface, leftface, frontface, rightface, backface, downface)
		U(upface, leftface, frontface, rightface, backface, downface)
		U(upface, leftface, frontface, rightface, backface, downface)
		L(upface, leftface, frontface, rightface, backface, downface)
		L(upface, leftface, frontface, rightface, backface, downface)
		R(upface, leftface, frontface, rightface, backface, downface)
		R(upface, leftface, frontface, rightface, backface, downface)
	end
end

showcube(upface, leftface, frontface, rightface, backface, downface)

#CORNERS
while (upface[0][0] != "w" || upface[0][2] != "w" || upface[2][0] != "w" || upface[2][2] != "w" || frontface[0][2] != frontface[1][1] || frontface[0][0] != frontface[1][1] || rightface[0][2] != rightface[1][1] || rightface[0][0] != rightface[1][1] || backface[0][2] != backface[1][1] || backface[0][0] != backface[1][1] || leftface[0][2] != leftface[1][1] || leftface[0][0] != leftface[1][1]) do
	cuberight(upface, leftface, frontface, rightface, backface, downface)
	#puts "ENTRANDO NO WHILE"
	#showcube(upface, leftface, frontface, rightface, backface, downface)
	cont = 0
	while (frontface[0][2] != "w" && rightface[0][0] != "w" && (upface[2][2] != "w" || frontface[0][2] == frontface[1][1]) && cont<4) do
		cuberight(upface, leftface, frontface, rightface, backface, downface)
		cont = cont + 1
		#puts "Vendo em cima"
		#stopper = gets.chomp
	end

	if (frontface[0][2] == "w" || rightface[0][0] == "w" || (upface[2][2] == "w" && frontface[0][2] != frontface[1][1])) then
		Ri(upface, leftface, frontface, rightface, backface, downface)
		Di(upface, leftface, frontface, rightface, backface, downface)
		R(upface, leftface, frontface, rightface, backface, downface)
		#puts "Foi aqui?"
		#showcube(upface, leftface, frontface, rightface, backface, downface)
	end

	cont = 0
	while(not(frontface[2][2] == frontface[1][1] && rightface[2][0] == "w" && downface[0][2] == rightface[1][1]) && not(frontface[2][2] == "w" && rightface[2][0] == rightface[1][1] && downface[0][2] == frontface[1][1]) && not(frontface[2][2] == rightface[1][1] && rightface[2][0] == frontface[1][1] && downface[0][2] == "w") && not(frontface[2][2] == frontface[1][1] && rightface[2][0] == rightface[1][1] && downface[0][2] == "w") && cont < 16) do
		if (cont%4 == 0) then
			D(upface, leftface, frontface, rightface, backface, downface)
		end
		D(upface, leftface, frontface, rightface, backface, downface)
		cubeleft(upface, leftface, frontface, rightface, backface, downface)
		cont = cont + 1
		#puts "Primeiro Stop: "
		#showcube(upface, leftface, frontface, rightface, backface, downface)
		#stop1 = gets.to_i
	end
	cont = 0
	while((upface[2][2] != "w" || frontface[0][2] != frontface[1][1]) && cont < 20) do
		Ri(upface, leftface, frontface, rightface, backface, downface)
		Di(upface, leftface, frontface, rightface, backface, downface)
		R(upface, leftface, frontface, rightface, backface, downface)
		D(upface, leftface, frontface, rightface, backface, downface)
		cont = cont + 1
		#puts "Segundo Stop: "
		#showcube(upface, leftface, frontface, rightface, backface, downface)
		#stop2 = gets.to_i
	end
	#puts "Ultimo Stop: "
	#showcube(upface, leftface, frontface, rightface, backface, downface)
	#stop3 = gets.to_i
end

showcube(upface, leftface, frontface, rightface, backface, downface)

#MID LAYER
cubeup(upface, leftface, frontface, rightface, backface, downface)
cubeup(upface, leftface, frontface, rightface, backface, downface)
cont = 0
while ((frontface[1][0] != frontface[1][1] || frontface[1][2] != frontface[1][1]) || (leftface[1][0] != leftface[1][1] || leftface[1][2] != leftface[1][1]) || (rightface[1][0] != rightface[1][1] || rightface[1][2] != rightface[1][1]) || (backface[1][0] != backface[1][1] || backface[1][2] != backface[1][1]) ) do
	if (cont%4 == 0) then
		Ui(upface, leftface, frontface, rightface, backface, downface)
	end
	Ui(upface, leftface, frontface, rightface, backface, downface)
	cubeleft(upface, leftface, frontface, rightface, backface, downface)
	cont = cont + 1
	if ((frontface[0][1] == frontface[1][1]) && upface[2][1] != "y") then
		if ((frontface[1][0] != frontface[1][1]) && upface[2][1] == leftface[1][1]) then
			Ui(upface, leftface, frontface, rightface, backface, downface)
			Li(upface, leftface, frontface, rightface, backface, downface)
			U(upface, leftface, frontface, rightface, backface, downface)
			L(upface, leftface, frontface, rightface, backface, downface)
			U(upface, leftface, frontface, rightface, backface, downface)
			F(upface, leftface, frontface, rightface, backface, downface)
			Ui(upface, leftface, frontface, rightface, backface, downface)
			Fi(upface, leftface, frontface, rightface, backface, downface)
		elsif ((frontface[1][2] != frontface[1][1]) && upface[2][1] == rightface[1][1]) then
			U(upface, leftface, frontface, rightface, backface, downface)
			R(upface, leftface, frontface, rightface, backface, downface)
			Ui(upface, leftface, frontface, rightface, backface, downface)
			Ri(upface, leftface, frontface, rightface, backface, downface)
			Ui(upface, leftface, frontface, rightface, backface, downface)
			Fi(upface, leftface, frontface, rightface, backface, downface)
			U(upface, leftface, frontface, rightface, backface, downface)
			F(upface, leftface, frontface, rightface, backface, downface)
		end
	elsif (cont%16 == 0) then
		Ui(upface, leftface, frontface, rightface, backface, downface)
		Li(upface, leftface, frontface, rightface, backface, downface)
		U(upface, leftface, frontface, rightface, backface, downface)
		L(upface, leftface, frontface, rightface, backface, downface)
		U(upface, leftface, frontface, rightface, backface, downface)
		F(upface, leftface, frontface, rightface, backface, downface)
		Ui(upface, leftface, frontface, rightface, backface, downface)
		Fi(upface, leftface, frontface, rightface, backface, downface)
	end
end

showcube(upface, leftface, frontface, rightface, backface, downface)

#YELLOW CROSS

while (upface[0][1] != "y" || upface[1][0] != "y" || upface[1][2] != "y" || upface[2][1] != "y") do
	if (upface[0][1] == "y" && upface[1][2] == "y") then
		cubeleft(upface, leftface, frontface, rightface, backface, downface)
	elsif (upface[1][2] == "y" && upface[2][1] == "y") then
		cubeleft(upface, leftface, frontface, rightface, backface, downface)
		cubeleft(upface, leftface, frontface, rightface, backface, downface)
	elsif (upface[2][1] == "y" && upface[1][0] == "y") then
		cuberight(upface, leftface, frontface, rightface, backface, downface)
	elsif (upface[0][1] == "y" && upface[2][1] == "y") then
		cuberight(upface, leftface, frontface, rightface, backface, downface)
	end

	if (upface[0][1] == "y" && upface[1][0] == "y") then
		F(upface, leftface, frontface, rightface, backface, downface)
		U(upface, leftface, frontface, rightface, backface, downface)
		R(upface, leftface, frontface, rightface, backface, downface)
		Ui(upface, leftface, frontface, rightface, backface, downface)
		Ri(upface, leftface, frontface, rightface, backface, downface)
		Fi(upface, leftface, frontface, rightface, backface, downface)
	elsif (upface[1][0] == "y" && upface[1][2] == "y") then
		F(upface, leftface, frontface, rightface, backface, downface)
		R(upface, leftface, frontface, rightface, backface, downface)
		U(upface, leftface, frontface, rightface, backface, downface)
		Ri(upface, leftface, frontface, rightface, backface, downface)
		Ui(upface, leftface, frontface, rightface, backface, downface)
		Fi(upface, leftface, frontface, rightface, backface, downface)
	else
		F(upface, leftface, frontface, rightface, backface, downface)
		U(upface, leftface, frontface, rightface, backface, downface)
		R(upface, leftface, frontface, rightface, backface, downface)
		Ui(upface, leftface, frontface, rightface, backface, downface)
		Ri(upface, leftface, frontface, rightface, backface, downface)
		Fi(upface, leftface, frontface, rightface, backface, downface)
	end
end

showcube(upface, leftface, frontface, rightface, backface, downface)

#MATCHING YELLOW EDGES
cont = 0
while (frontface[0][1] != frontface[1][1] || rightface[0][1] != rightface[1][1] || leftface[0][1] != leftface[1][1] || backface[0][1] != backface[1][1]) do
	if (cont%4 == 0) then
		Ui(upface, leftface, frontface, rightface, backface, downface)
	end
	Ui(upface, leftface, frontface, rightface, backface, downface)
	cubeleft(upface, leftface, frontface, rightface, backface, downface)
	cont = cont + 1
	if (frontface[0][1] == rightface[1][1] && rightface[0][1] == frontface[1][1]) then
		U(upface, leftface, frontface, rightface, backface, downface)
		R(upface, leftface, frontface, rightface, backface, downface)
		U(upface, leftface, frontface, rightface, backface, downface)
		Ri(upface, leftface, frontface, rightface, backface, downface)
		U(upface, leftface, frontface, rightface, backface, downface)
		R(upface, leftface, frontface, rightface, backface, downface)
		U(upface, leftface, frontface, rightface, backface, downface)
		U(upface, leftface, frontface, rightface, backface, downface)
		Ri(upface, leftface, frontface, rightface, backface, downface)
	elsif (cont%16==0) then
		U(upface, leftface, frontface, rightface, backface, downface)
		R(upface, leftface, frontface, rightface, backface, downface)
		U(upface, leftface, frontface, rightface, backface, downface)
		Ri(upface, leftface, frontface, rightface, backface, downface)
		U(upface, leftface, frontface, rightface, backface, downface)
		R(upface, leftface, frontface, rightface, backface, downface)
		U(upface, leftface, frontface, rightface, backface, downface)
		U(upface, leftface, frontface, rightface, backface, downface)
		Ri(upface, leftface, frontface, rightface, backface, downface)
	end
end

showcube(upface, leftface, frontface, rightface, backface, downface)

#PUTTING CORNER IN THE RIGHT SPOT
cont = 0
while (((frontface[0][2] != frontface[1][1] && frontface[0][2] != rightface[1][1] && frontface[0][2] != upface[1][1]) || (rightface[0][0] != frontface[1][1] && rightface[0][0] != rightface[1][1] && rightface[0][0] != upface[1][1]) || (upface[2][2] != frontface[1][1] && upface[2][2] != rightface[1][1] && upface[2][2] != upface[1][1])) || ((rightface[0][2] != backface[1][1] && rightface[0][2] != rightface[1][1] && rightface[0][2] != upface[1][1]) || (backface[0][0] != backface[1][1] && backface[0][0] != rightface[1][1] && backface[0][0] != upface[1][1]) || (upface[0][2] != backface[1][1] && upface[0][2] != rightface[1][1] && upface[0][2] != upface[1][1])) || ((backface[0][2] != backface[1][1] && backface[0][2] != leftface[1][1] && backface[0][2] != upface[1][1]) || (leftface[0][0] != backface[1][1] && leftface[0][0] != leftface[1][1] && leftface[0][0] != upface[1][1]) || (upface[0][0] != backface[1][1] && upface[0][0] != leftface[1][1] && upface[0][0] != upface[1][1])) || ((leftface[0][2] != frontface[1][1] && leftface[0][2] != leftface[1][1] && leftface[0][2] != upface[1][1]) || (frontface[0][0] != frontface[1][1] && frontface[0][0] != leftface[1][1] && frontface[0][0] != upface[1][1]) || (upface[2][0] != frontface[1][1] && upface[2][0] != leftface[1][1] && upface[2][0] != upface[1][1]))) do
	cubeleft(upface, leftface, frontface, rightface, backface, downface)
	cont = cont + 1
	if (((frontface[0][2] == frontface[1][1] || frontface[0][2] == rightface[1][1] || frontface[0][2] == upface[1][1]) && (rightface[0][0] == frontface[1][1] || rightface[0][0] == rightface[1][1] || rightface[0][0] == upface[1][1]) && (upface[2][2] == frontface[1][1] || upface[2][2] == rightface[1][1] || upface[2][2] == upface[1][1]))) then
		U(upface, leftface, frontface, rightface, backface, downface)
		R(upface, leftface, frontface, rightface, backface, downface)
		Ui(upface, leftface, frontface, rightface, backface, downface)
		Li(upface, leftface, frontface, rightface, backface, downface)
		U(upface, leftface, frontface, rightface, backface, downface)
		Ri(upface, leftface, frontface, rightface, backface, downface)
		Ui(upface, leftface, frontface, rightface, backface, downface)
		L(upface, leftface, frontface, rightface, backface, downface)
	elsif (cont%4==0) then
		U(upface, leftface, frontface, rightface, backface, downface)
		R(upface, leftface, frontface, rightface, backface, downface)
		Ui(upface, leftface, frontface, rightface, backface, downface)
		Li(upface, leftface, frontface, rightface, backface, downface)
		U(upface, leftface, frontface, rightface, backface, downface)
		Ri(upface, leftface, frontface, rightface, backface, downface)
		Ui(upface, leftface, frontface, rightface, backface, downface)
		L(upface, leftface, frontface, rightface, backface, downface)
	end
end

showcube(upface, leftface, frontface, rightface, backface, downface)

#LAST STEP

cont = 0
while (frontface[0][2] != frontface[1][1] || frontface[0][1] != frontface[1][1] || rightface[0][0] != rightface[1][1] || rightface[0][1] != rightface[1][1] || rightface[0][2] != rightface[1][1] || backface[0][0] != backface[1][1] || backface[0][1] != backface[1][1] || backface[0][2] != backface[1][1] || leftface[0][0] != leftface[1][1] || leftface[0][1] != leftface[1][1] || leftface[0][2] != leftface[1][1] || frontface[0][0] != frontface[1][1]) do
	while (upface[2][2] != "y") do
		Ri(upface, leftface, frontface, rightface, backface, downface)
		Di(upface, leftface, frontface, rightface, backface, downface)
		R(upface, leftface, frontface, rightface, backface, downface)
		D(upface, leftface, frontface, rightface, backface, downface)
		Ri(upface, leftface, frontface, rightface, backface, downface)
		Di(upface, leftface, frontface, rightface, backface, downface)
		R(upface, leftface, frontface, rightface, backface, downface)
		D(upface, leftface, frontface, rightface, backface, downface)
	end
	Ui(upface, leftface, frontface, rightface, backface, downface)
end

showcube(upface, leftface, frontface, rightface, backface, downface)
