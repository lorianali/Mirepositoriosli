tableextension 70111 "Customer Quote" extends "Sales Header"
{
    fields
    {
        field(1800; "Won/Lost Quote Status"; Enum "SOL Won/Lost Status")
        {
            Caption = 'Won/Lost Quote Status';
        }
        field(1801; "Won/Lost Date"; DateTime)
        {
            Caption = 'Won/Lost Date';
        }
        field(1802; "Won/Lost Reason Code"; Code[10])
        {
            TableRelation = "Close Opportunity Code";
            Caption = 'Won/Lost Reason Code';
        }
        field(1803; "Won/Lost Reason Desc."; Text[100])
        {
            Editable = false;
            Caption = 'Won/Lost Reason Desc';
        }
        field(1804; "Won/Lost Remarks"; Text[2048])
        {
            Caption = 'Won/Lost Remarks';
        }
    }

    keys
    {
        // Add changes to keys here
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;
}