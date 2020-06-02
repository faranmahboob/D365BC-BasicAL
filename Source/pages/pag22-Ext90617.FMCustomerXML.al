pageextension 90617 "FM Customer XML Extension" extends "Customer List"
{
    layout
    {
    }
    actions
    {
        addafter("&Customer")
        {
            action("Export to XML")
            {
                Caption = 'Export to XML';
                ApplicationArea = all;
                trigger OnAction()
                var
                    Customer: Record customer;
                begin
                    XMLPORT.RUN(90600, TRUE, FALSE, Customer);
                end;
            }

        }
        addafter("Export to XML")
        {
            action("Export to CSV")
            {
                Caption = 'Export to CSV';
                ApplicationArea = all;
                trigger OnAction()
                var
                    Customer: Record customer;
                begin
                    XMLPORT.RUN(90601, TRUE, FALSE, Customer);
                end;
            }
        }
    }
}