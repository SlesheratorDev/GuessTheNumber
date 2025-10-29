program GuessTheNumber;

var
	secretNumber, guess: integer;
	tries: integer;

begin
	randomize;

	secretNumber := random(100) + 1;
	tries := 0;

	writeln('Мы загадали число от 1 до 100. Попробуйте угадать!');

	repeat
		write('Введите ваше предположение: ');
		readln(guess);
		tries := tries + 1;

		if guess > secretNumber then
			writeln('Это число меньше. Попробуйте еще раз.')
		else if guess < secretNumber then
			writeln('Это число больше. Попробуйте еще раз.');

	until guess = secretNumber;

	writeln;
	writeln('Поздравляем! Вы угадали число ', secretNumber, ' за ', tries, ' попыток. ');

	readln;
end.
