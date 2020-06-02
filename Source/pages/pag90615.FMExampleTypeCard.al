page 90615 "FM Example Type Card"
{
    PageType = Card;
    SourceTable = "FM Example Type";
    Caption = 'Example Type card';
    UsageCategory = Administration;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            group(General)
            {
                field(Code; Code)
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


}