page 90611 "FM Example Types"
{
    PageType = List;
    SourceTable = "FM Example Type";
    Editable = false;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'Example Types';
    CardPageId = "FM Example Type Card";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Code"; Code)
                {
                    ApplicationArea = All;
                }
                field(Description; Description)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
    }
}
