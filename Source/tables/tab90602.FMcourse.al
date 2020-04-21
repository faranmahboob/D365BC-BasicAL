table 90602 "FM Course"
{
    DataPerCompany = true;
    fields
    {
        field(1; Code; Code[10]) { DataClassification = CustomerContent; }
        field(2; Name; Text[30]) { DataClassification = CustomerContent; }
        field(3; Description; Text[50]) { DataClassification = CustomerContent; }
        field(4; Type; Enum "FM Type") { DataClassification = CustomerContent; }
        field(5; Duration; Decimal) { DataClassification = CustomerContent; }
        field(6; Price; Decimal) { DataClassification = CustomerContent; }
        field(7; Active; Boolean) { DataClassification = CustomerContent; }
        field(8; Difiiculty; Integer) { DataClassification = CustomerContent; }
        field(9; "Passing Rate"; Integer) { DataClassification = CustomerContent; }
        field(10; "Instructor Code"; Code[20])
        {
            DataClassification = CustomerContent;
            TableRelation = Resource where(Type = const(Person));
        }
        field(120; "Instructor Name"; Text[50])
        {
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup (Resource.Name where("No." = field("Instructor Code")));
        }

    }
    keys
    {
        key(PK; Code) { Clustered = true; }
        key("Secondary Key 1"; "Instructor Code") { }
        key("Secondary Key 2"; Type) { }
    }

}