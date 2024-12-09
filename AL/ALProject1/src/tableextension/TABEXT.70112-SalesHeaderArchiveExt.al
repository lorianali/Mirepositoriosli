tableextension 70112 "Sales Header Archive Ext" extends "Sales Header Archive"
{
    fields
    {
        field(1800; "SOL Won/Lost Quote Status"; Enum "SOL Won/Lost Status")
        {
            Caption = 'Won/Lost Quote Status';
            DataClassification =CustomerContent;
        }
        field(1801; "SOL Won/Lost Date"; DateTime)
        {
            Caption = 'Won/Lost Date';
            DataClassification =CustomerContent;
        }
        field(1802; "SOL Won/Lost Reason Code"; Code[10])
        {
            Caption = 'Won/Lost Reason Code';
            DataClassification = CustomerContent;
            TableRelation = if ("SOL Won/Lost Quote Status" = const(Won)) "Close Opportunity Code" where(type = const(Won))
            else
            if ("SOL Won/Lost Quote STatus" = const(Lost)) "Close Opportunity Code" where(type = const(lost));

            trigger OnValidate()
            begin
                CalcFields("SOL Won/Lost Reason Desc.");
            end;
        }
        field(1803; "SOL Won/Lost Reason Desc."; Text[100])
        {
            Editable = false;
            Caption = 'Won/Lost Reason Description';
            FieldClass = FlowField;
            CalcFormula = lookup("Close Opportunity Code".Description where(Code = field("SOL Won/Lost Reason Code")));

        }
        field(1804; "SOL Won/Lost Remarks"; Text[2048])
        {
            Caption = 'Won/Lost Remarks';
            DataClassification = CustomerContent;
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