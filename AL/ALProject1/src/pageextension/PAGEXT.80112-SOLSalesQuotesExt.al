pageextension 80112 "SOL Sales Quotes Ext" extends "Sales Quotes"
{
    layout
    {
        addafter("Due Date")
        {
            field("Quote Status"; rec."SOL Won/Lost Quote Status")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the status of the quote.';
            }
            field("Won/Lost Date"; rec."SOL Won/Lost Date")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the date of this quote was closed.';
            }
            field("Won/Lost Reason Code."; rec."SOL Won/Lost Reason Code.")
            {
                ApplicationArea = All;

                ToolTip = 'Specifies the reason closing the quote.';
            }
            field("Won/Lost Reason Desc."; rec."SOL Won/Lost Reason Desc.")
            {
                ApplicationArea = All;

                ToolTip = 'Specifies the reason closing the quote.';
            }
            field("Won/Lost Remarks"; rec."SOL Won/Lost Remarks")
            {
                ApplicationArea = All;

                ToolTip = 'Specifies an extra remark on the quote status.';
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}