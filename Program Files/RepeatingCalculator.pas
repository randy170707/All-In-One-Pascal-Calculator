program RepeatingCalculator;

uses
	Math, Crt;
	
var
	UserInputAdd1, UserInputAdd2, ResultAdd, UserInputSub1, UserInputSub2, ResultSub, UserInputMulti1, UserInputMulti2, ResultMulti, UserInputDiv1, UserInputDiv2, ResultDiv, UserInputSqr, ResultSqr : Real;
	UserDecision, UserDecisionFunction, WelcomeMessage : String;
	
procedure Initialise;
begin
	UserInputAdd1 := 0;
	UserInputAdd2 := 0;
	ResultAdd := 0;
	UserInputSub1 := 0;
	UserInputSub2 := 0;
	ResultSub := 0;
	UserInputMulti1 := 0;
	UserInputMulti2 := 0;
	ResultMulti := 0;
	UserInputDiv1 := 0;
	UserInputDiv2 := 0;
	ResultDiv := 0;
	UserInputSqr := 0;
	ResultSqr := 0;
	UserDecision := ' ';
	UserDecisionFunction := ' ';
	WelcomeMessage := 'Welcome to Randy''s Calculator!';
end;

procedure UserGreetings;
begin
	textbackground(red);
	textcolor(white);
	writeln(WelcomeMessage);
	writeln('Functions > Addition, Subtraction, Division, Multiplication, Square');
	writeln;
	writeln('Commands > Add/add/Addition/addition, Sub/sub/Subtraction/subtraction,');
	writeln('           Div/div/Division/division, Multi/multi/Multiplication/multiplication,');
	writeln('           Sqr/sqr/Square/square, Done/done');
	writeln;
end;

procedure LoopedCalculations;
begin
	
repeat
begin
	textbackground(red);
	writeln;
	write('Please select a function from the list above > ');
	readln(UserDecisionFunction);
	writeln;
	case UserDecisionFunction of
	'Add','add','Addition','addition':begin
											write('Please enter your first value > ');
											readln(UserInputAdd1);
											writeln;
											write('Please enter your second value > ');
											readln(UserInputAdd2);
											writeln;
											ResultAdd := UserInputAdd1 + UserInputAdd2;
											
											writeln('Your result > ', ResultAdd:5:5);
											
	end;
	'Sub','sub','Subtraction','subtraction':begin
											write('Please enter your first value > ');
											readln(UserInputSub1);
											writeln;
											write('Please enter your second value > ');
											readln(UserInputSub2);
											writeln;
											ResultSub := UserInputSub1 - UserInputSub2;											
											
											writeln('Your result > ', ResultSub:5:5);
	end;
	'Div','div','Division','division':begin
											write('Please enter your first value > ');
											readln(UserInputDiv1);
											writeln;
											write('Please enter your second value > ');
											readln(UserInputDiv2);
											writeln;
											
											ResultDiv := UserInputDiv1 / UserInputDiv2;	
											
											writeln('Your result > ', ResultDiv:5:5);
	end;
	'Multi','multi','Multiplication','multiplication':begin
															write('Please enter your first value > ');
																readln(UserInputMulti1);
																writeln;
																write('Please enter your second value > ');
																readln(UserInputMulti2);
																writeln;
											
																ResultMulti := UserInputMulti1 * UserInputMulti2;
																
																writeln('Your result > ', ResultMulti:5:5);
	end;
	'Sqr','sqr','Square','square':begin
										write('Please enter your first value > ');
										readln(UserInputSqr);
										writeln;
										
										ResultSqr := sqr(UserInputSqr);											
										
										writeln('Your result > ', ResultSqr:5:5);
	end;
	else
		begin
		writeln('Please Continue Below');
		writeln;
		end;
	
	writeln;
	write('Are you sure you would like to exit? (yes or no) > ');
	readln(UserDecision);
	writeln;
	textbackground(black);
	writeln('----------------------------------------------------------------------');
	writeln;
	end;
end;
until UserDecision = 'yes';
end;

procedure Final;
begin
	textbackground(red);
	write('Thank you for using Randy''s Calculator!');
end;

begin
	Initialise;
	UserGreetings;
	LoopedCalculations;
	Final;
readln;
end.