table 90604 "FM Customer Overview"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Entry No"; Integer) { DataClassification = ToBeClassified; }
        field(2; "Customer No"; Code[20]) { DataClassification = ToBeClassified; }
        field(3; "Customer Name"; Text[50]) { DataClassification = ToBeClassified; }
        field(4; "Source Code"; Text[20]) { DataClassification = ToBeClassified; }
        field(5; "Amount"; Decimal) { DataClassification = ToBeClassified; }
        field(6; "Last Run Date"; DateTime) { DataClassification = ToBeClassified; }
    }

    keys
    {
        key(PK; "Entry No")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}