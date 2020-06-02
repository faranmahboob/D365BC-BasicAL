table 90606 "FM Example Type"
{

    DataPerCompany = false;
    DrillDownPageID = "FM Example Types";
    LookupPageID = "FM Example Types";

    fields
    {
        field(1; "Code"; Code[20])
        {
        }
        field(2; Description; Text[50])
        {
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}
