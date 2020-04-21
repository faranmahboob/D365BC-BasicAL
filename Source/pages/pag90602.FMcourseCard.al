page 90602 "FM Couse Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "FM Course";
    Caption = 'Course Card';

    layout
    {
        area(Content)
        {
            group(Genral)
            {
                Caption = 'General';
                field(Code; Code) { ApplicationArea = All; }
                field(Name; Name) { ApplicationArea = All; }
                field(Description; Description) { ApplicationArea = All; }
                field(Duration; Duration) { ApplicationArea = All; }
                field(Price; Price) { ApplicationArea = All; }
                field(Type; Type) { ApplicationArea = All; }
                field(Active; Active) { ApplicationArea = All; }
                field("Instructor Code"; "Instructor Code") { ApplicationArea = All; }
                field("Instructor Name"; "Instructor Name") { ApplicationArea = All; }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Resource Card")
            {
                ApplicationArea = All;
                RunObject = page "Resource Card";
                RunPageLink = "No." = field("Instructor Code");
                Promoted = true;
                Image = Relationship;
                PromotedCategory = Process;
                PromotedIsBig = true;
            }
        }
    }

    var
        myInt: Integer;
}