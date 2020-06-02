codeunit 90600 "FM Statements"
{
    procedure GetSuggestion(var Level: Text[30]; var Suggestion: Text[80]; Difficulty: Integer)
    var
    begin
        Level := '';
        Suggestion := '';
        case Difficulty of
            1 .. 5:
                begin
                    Level := 'Beginner';
                    Suggestion := 'Take e-Learning or remote training';
                end;
            6 .. 8:
                begin
                    Level := 'Intermediate';
                    Suggestion := 'Attend instructor-Led';
                end;
            9 .. 10:
                begin
                    Level := 'Advanced';
                    Suggestion := 'Attend instructor-Led and self study';
                end;
        end;

    end;

    trigger OnRun()
    begin

    end;

    var
        Result: Boolean;

}