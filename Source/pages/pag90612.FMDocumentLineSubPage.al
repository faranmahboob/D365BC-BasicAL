page 90612 "FM Document Line Subpage"
{
    AutoSplitKey = true;
    DelayedInsert = true;
    PageType = ListPart;
    SourceTable = "FM Document Line";
    Caption = 'Document Line Subpage';

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Document No."; "Document No.")
                {
                    ApplicationArea = All;
                }
                field("Document Description"; "Example Description")
                {
                    ApplicationArea = All;
                }
                field("Egg Date"; "Egg Date")
                {
                    ApplicationArea = All;
                }
                field(Quantity; Quantity)
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
