
```mermaid
flowchart

subgraph Item
    Item_Title
    
    Item_Assignees

    subgraph Item_Description
        Description
        Item_TrackedBy
        Item_Tracks
        Description <--> Item_TrackedBy
        Description <--> Item_Tracks
    end

    subgraph Field
        direction LR
        Field_Status
    end

end

subgraph Draft_Item
direction LR
    Draft_Title
    Draft_Assignees
    Draft_Description

end

Item_Title --> Draft_Title 
Item_Description --> Draft_Description 
Item_Assignees --> Draft_Assignees 

```