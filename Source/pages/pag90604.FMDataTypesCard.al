page 90604 "FM Data Type Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    Caption = 'Course Card';
    layout
    {
        area(Content)
        {
            group(GroupName)
            {
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
    trigger OnOpenPage()
    var
    begin
        MESSAGE('The value of %1 is %2', 'YesOrNo', YesOrNo);
        MESSAGE('The value of %1 is %2', 'Amount', Amount);
        MESSAGE('The value of %1 is %2', 'When Was It', "When Was It");
        MESSAGE('The value of %1 is %2', 'What Time', "What Time");
        MESSAGE('The value of %1 is %2', 'Description', Description);
        MESSAGE('The value of %1 is %2', 'Code Number', "Code Number");
        MESSAGE('The value of %1 is %2', 'Ch', Ch);
        MESSAGE('The value of %1 is %2', 'Color', Color);

    end;

    var
        LoopNo: Integer;
        YesOrNo: Boolean;
        Amount: Decimal;
        "When Was It": date;
        "What Time": Time;
        Description: Text[30];
        "Code Number": Code[10];
        Color: Enum "FM Color";
        Ch: Char;
}