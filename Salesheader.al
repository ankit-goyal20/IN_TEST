tableextension 50101 MyExtension extends "Sales Header"
{
    fields
    {
        // Add changes to table fields here
        field(50002; Narration; Text[100])
        { 

            DataClassification = CustomerContent;
        }
        
    }
    
 
}