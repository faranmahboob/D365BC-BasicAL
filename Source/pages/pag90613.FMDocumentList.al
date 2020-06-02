page 90613 "FM Document List"
{
    PageType = List;
    Editable = false;
    SourceTable = "FM Document Header";
    CardPageId = "FM Document Card";
    Caption = 'Document List';
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
                field("Document Date"; "Document Date")
                {
                    ApplicationArea = All;
                }
            }
        }
        area(factboxes)
        {
        }
    }

    actions
    {

    }
}
