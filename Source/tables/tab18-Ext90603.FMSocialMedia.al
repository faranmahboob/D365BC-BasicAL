tableextension 90603 "FM Social Media" extends Customer
{
    fields
    {
        field(50110; Facebook; Text[50]) { DataClassification = CustomerContent; }
        field(50111; Twitter; Text[50]) { DataClassification = CustomerContent; }
        field(50112; Instagram; Text[50]) { DataClassification = CustomerContent; }
        field(50113; Linkdin; Text[50]) { DataClassification = CustomerContent; }
    }
}