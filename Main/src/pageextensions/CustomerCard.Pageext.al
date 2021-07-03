pageextension 50000 "SDH Customer Card" extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            field("SDH Rating"; rec."SDH Rating")
            {
                ApplicationArea = all;
                ToolTip = 'Specifies the value of the Rating field';
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }
}