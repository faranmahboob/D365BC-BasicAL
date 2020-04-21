page 90603 "FM Couse List"
{
    PageType = List;
    Editable = false;
    CardPageId = "FM Couse Card";
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "FM Course";
    Caption = 'Course List';

    layout
    {
        area(Content)
        {
            repeater(Genral)
            {
                Caption = 'General';
                field(Code; Code) { ApplicationArea = All; }
                field(Name; Name) { ApplicationArea = All; }
                field(Description; Description) { ApplicationArea = All; }
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

}