query 90600 "FM Cust Ledger Entry Query"
{
    QueryType = Normal;
    OrderBy = descending(Sum_Amount_LCY);
    TopNumberOfRows = 10;

    elements
    {
        dataitem(Customer; Customer)
        {
            column(No_; "No.")
            {

            }
            column(Name; Name)
            {

            }
            column(Customer_Posting_Group; "Customer Posting Group")
            {

            }

            dataitem(Cust__Ledger_Entry;
            "Cust. Ledger Entry")
            {
                DataItemLink = "Customer No." = Customer."No.";
                SqlJoinType = InnerJoin;
                DataItemTableFIlter = "Document Type" = filter(Invoice | "Credit Memo");

                column(Sum_Amount_LCY; "Amount (LCY)")
                {
                    Method = Sum;
                }

            }
        }
    }

    var
        myInt: Integer;

    trigger OnBeforeOpen()
    begin

    end;
}