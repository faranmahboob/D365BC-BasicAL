page 90610 "FM Example List"
{
    PageType = List;
    UsageCategory = Administration;
    CardPageID = "FM Example Card";
    Editable = false;
    SourceTable = "FM Example Master Data";
    Caption = 'Example List';
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No."; "No.")
                {
                    ApplicationArea = All;
                }
                field(Description; Description)
                {
                    ApplicationArea = All;
                }
                field("Example Type Code"; "Example Type Code")
                {
                    ApplicationArea = All;
                }
            }
        }

    }

    actions
    {
        area(navigation)
        {
        }
    }
}
