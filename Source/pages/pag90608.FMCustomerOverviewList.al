page 90608 "FM Customer Overview"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "FM Customer Overview";
    Editable = false;
    Caption = 'Customer Overview';

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Entry No"; "Entry No") { ApplicationArea = All; }
                field("Customer No"; "Customer No") { ApplicationArea = All; }
                field("Customer Name"; "Customer Name") { ApplicationArea = All; }
                field("Source Code"; "Source Code") { ApplicationArea = All; }
                field(Amount; Amount) { ApplicationArea = All; }
                field("Last Run Date"; "Last Run Date") { ApplicationArea = All; }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Import Records")
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    UpdateCustomerOverview: Codeunit "FM Update Customer Overview";
                begin
                    UpdateCustomerOverview.Run();
                end;
            }
        }
    }

    var
        myInt: Integer;
}