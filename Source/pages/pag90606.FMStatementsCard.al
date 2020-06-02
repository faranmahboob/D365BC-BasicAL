page 90606 "FM Statements Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'Statement Card';
    layout
    {
        area(Content)
        {

            group(Input)
            {
                field(Difficulty; Difficulty)
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    var
                    begin
                        GetSuggestion();
                    end;
                }
                field(Level; Level)
                {
                    ApplicationArea = All;
                }
                field(Suggestion; Suggestion)
                {
                    ApplicationArea = All;
                }
            }
            group(Output)
            {
                field(Result; Result)
                {
                    ApplicationArea = All;

                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        Difficulty: Integer;
        Level: Text[30];
        Suggestion: Text[80];
        Result: Boolean;
        MyStatements: Codeunit "FM Statements";

    trigger OnAfterGetRecord()
    var
    begin
        MyStatements.GetSuggestion(Level, Suggestion, Difficulty);
    end;

    procedure GetSuggestion()
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
}