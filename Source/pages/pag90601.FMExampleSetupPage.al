page 90620 "FM Example Setup"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "FM Example Setup table";
    Caption = 'Example Setup';
    layout
    {
        area(content)
        {
            group(General)
            {

                field("Example Nos."; "Example Nos.")
                {
                    ApplicationArea = All;
                    Enabled = true;
                }
                field("Document Nos."; "Document Nos.")
                {
                    ApplicationArea = All;
                    Enabled = true;
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
        }
    }
    trigger OnOpenPage();
    begin
        IF NOT GET THEN INSERT;
    end;
}
