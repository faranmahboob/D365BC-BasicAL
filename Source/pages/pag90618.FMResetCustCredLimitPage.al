page 90618 "FM Rest Cust Cred Limit"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'Reset Customer Credit Limit';

    layout
    {
        area(Content)
        {

        }
    }
    trigger OnOpenPage()
    var
        ResetCodeunit: Codeunit "FM Reset Customer Credit Limit";
    begin
        ResetCodeunit.Run();
    end;


    var
}