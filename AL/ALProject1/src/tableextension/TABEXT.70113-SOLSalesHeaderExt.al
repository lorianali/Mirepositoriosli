tableextension 70113 "SOL Sales Header Ext" extends "Sales Header"
{
    fields
    {
        field(20000; "SOL Won/Lost Quote Status"; Enum "SOL Won/Lost Status")
        {
            DataClassification = CustomerContent;
            Caption='Quote Status'; 

            trigger OnValidate()
            begin 
                if "SOL Won/Lost Date"=0DT then
                "SOL Won/Lost Date":=CurrentDateTime();
            end;
        }
        field(20001; "SOL Won/Lost Date"; DateTime)
        {
            Caption='Won/Lost Date';
            DataClassification = CustomerContent;
            Editable=false;
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