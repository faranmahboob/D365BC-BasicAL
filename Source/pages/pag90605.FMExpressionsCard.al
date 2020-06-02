page 90605 "FM Expressions Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'Expression Card';

    layout
    {
        area(Content)
        {
            group(Input)
            {
                field(Value1; Value1)
                {
                    Caption = 'Value 1';
                    ApplicationArea = All;

                }
                field(Value2; Value2)
                {
                    Caption = 'Value 2';
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
            action(Execute)
            {
                Caption = 'Execute';
                ApplicationArea = All;

                trigger OnAction()
                begin
                    if Value1 > Value2 then
                        Result := true;
                end;
            }
        }
    }

    var
        Value1: Integer;
        Value2: Integer;
        Result: Boolean;
}
