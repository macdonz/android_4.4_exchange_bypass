.class Lcom/android/mail/ui/FolderListFragment$HierarchicalFolderListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "FolderListFragment.java"

# interfaces
.implements Lcom/android/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/ui/FolderListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HierarchicalFolderListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/mail/providers/Folder;",
        ">;",
        "Lcom/android/mail/ui/FolderListFragment$FolderListFragmentCursorAdapter;"
    }
.end annotation


# instance fields
.field private final mDropHandler:Lcom/android/mail/ui/FolderItemView$DropHandler;

.field private final mParent:Lcom/android/mail/providers/Folder;

.field private final mParentUri:Lcom/android/mail/utils/FolderUri;

.field final synthetic this$0:Lcom/android/mail/ui/FolderListFragment;


# direct methods
.method public constructor <init>(Lcom/android/mail/ui/FolderListFragment;Lcom/android/mail/content/ObjectCursor;Lcom/android/mail/providers/Folder;)V
    .locals 2
    .parameter
    .parameter
    .parameter "parentFolder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mail/content/ObjectCursor",
            "<",
            "Lcom/android/mail/providers/Folder;",
            ">;",
            "Lcom/android/mail/providers/Folder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 978
    .local p2, c:Lcom/android/mail/content/ObjectCursor;,"Lcom/android/mail/content/ObjectCursor<Lcom/android/mail/providers/Folder;>;"
    iput-object p1, p0, Lcom/android/mail/ui/FolderListFragment$HierarchicalFolderListAdapter;->this$0:Lcom/android/mail/ui/FolderListFragment;

    .line 979
    invoke-static {p1}, Lcom/android/mail/ui/FolderListFragment;->access$900(Lcom/android/mail/ui/FolderListFragment;)Lcom/android/mail/ui/ControllableActivity;

    move-result-object v0

    #v0=(Reference);
    invoke-interface {v0}, Lcom/android/mail/ui/ControllableActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04004a

    #v1=(Integer);
    invoke-direct {p0, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 980
    #p0=(Reference);
    invoke-static {p1}, Lcom/android/mail/ui/FolderListFragment;->access$900(Lcom/android/mail/ui/FolderListFragment;)Lcom/android/mail/ui/ControllableActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/FolderListFragment$HierarchicalFolderListAdapter;->mDropHandler:Lcom/android/mail/ui/FolderItemView$DropHandler;

    .line 981
    iput-object p3, p0, Lcom/android/mail/ui/FolderListFragment$HierarchicalFolderListAdapter;->mParent:Lcom/android/mail/providers/Folder;

    .line 982
    iget-object v0, p3, Lcom/android/mail/providers/Folder;->folderUri:Lcom/android/mail/utils/FolderUri;

    iput-object v0, p0, Lcom/android/mail/ui/FolderListFragment$HierarchicalFolderListAdapter;->mParentUri:Lcom/android/mail/utils/FolderUri;

    .line 983
    invoke-virtual {p0, p2}, Lcom/android/mail/ui/FolderListFragment$HierarchicalFolderListAdapter;->setCursor(Lcom/android/mail/content/ObjectCursor;)V

    .line 984
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 1048
    return-void
.end method

.method public getDefaultInbox(Lcom/android/mail/providers/Account;)Lcom/android/mail/providers/Folder;
    .locals 1
    .parameter "account"

    .prologue
    .line 1052
    const/4 v0, 0x0

    #v0=(Null);
    return-object v0
.end method

.method public getItemType(Lcom/android/mail/adapter/DrawerItem;)I
    .locals 1
    .parameter "item"

    .prologue
    .line 1058
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .parameter "position"

    .prologue
    .line 994
    invoke-virtual {p0, p1}, Lcom/android/mail/ui/FolderListFragment$HierarchicalFolderListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/providers/Folder;

    .line 995
    .local v0, f:Lcom/android/mail/providers/Folder;
    iget-object v1, v0, Lcom/android/mail/providers/Folder;->folderUri:Lcom/android/mail/utils/FolderUri;

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/mail/ui/FolderListFragment$HierarchicalFolderListAdapter;->mParentUri:Lcom/android/mail/utils/FolderUri;

    #v2=(Reference);
    invoke-virtual {v1, v2}, Lcom/android/mail/utils/FolderUri;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    #v1=(One);
    goto :goto_0
.end method

.method public getSelectedPosition()I
    .locals 6

    .prologue
    .line 1068
    invoke-virtual {p0}, Lcom/android/mail/ui/FolderListFragment$HierarchicalFolderListAdapter;->getCount()I

    move-result v0

    .line 1069
    .local v0, count:I
    #v0=(Integer);
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    #v1=(Conflicted);v2=(Integer);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    if-ge v2, v0, :cond_1

    .line 1070
    invoke-virtual {p0, v2}, Lcom/android/mail/ui/FolderListFragment$HierarchicalFolderListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/mail/providers/Folder;

    .line 1071
    .local v1, folder:Lcom/android/mail/providers/Folder;
    iget-object v4, v1, Lcom/android/mail/providers/Folder;->folderUri:Lcom/android/mail/utils/FolderUri;

    #v4=(Reference);
    iget-object v5, p0, Lcom/android/mail/ui/FolderListFragment$HierarchicalFolderListAdapter;->this$0:Lcom/android/mail/ui/FolderListFragment;

    #v5=(Reference);
    invoke-static {v5}, Lcom/android/mail/ui/FolderListFragment;->access$1100(Lcom/android/mail/ui/FolderListFragment;)Lcom/android/mail/utils/FolderUri;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/mail/utils/FolderUri;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1072
    .local v3, isSelected:Z
    #v3=(Boolean);
    if-eqz v3, :cond_0

    .line 1076
    .end local v1           #folder:Lcom/android/mail/providers/Folder;
    .end local v2           #i:I
    .end local v3           #isSelected:Z
    :goto_1
    #v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return v2

    .line 1069
    .restart local v1       #folder:Lcom/android/mail/providers/Folder;
    .restart local v2       #i:I
    .restart local v3       #isSelected:Z
    :cond_0
    #v1=(Reference);v3=(Boolean);v4=(Reference);v5=(Reference);
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1076
    .end local v1           #folder:Lcom/android/mail/providers/Folder;
    .end local v3           #isSelected:Z
    :cond_1
    #v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    const/4 v2, -0x1

    #v2=(Byte);
    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x1

    .line 1001
    #v4=(One);
    invoke-virtual {p0, p1}, Lcom/android/mail/ui/FolderListFragment$HierarchicalFolderListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/providers/Folder;

    .line 1002
    .local v0, folder:Lcom/android/mail/providers/Folder;
    iget-object v5, v0, Lcom/android/mail/providers/Folder;->folderUri:Lcom/android/mail/utils/FolderUri;

    #v5=(Reference);
    iget-object v6, p0, Lcom/android/mail/ui/FolderListFragment$HierarchicalFolderListAdapter;->mParentUri:Lcom/android/mail/utils/FolderUri;

    #v6=(Reference);
    invoke-virtual {v5, v6}, Lcom/android/mail/utils/FolderUri;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1003
    .local v2, isParent:Z
    #v2=(Boolean);
    if-eqz p2, :cond_1

    move-object v1, p2

    .line 1004
    #v1=(Reference);
    check-cast v1, Lcom/android/mail/ui/FolderItemView;

    .line 1010
    .local v1, folderItemView:Lcom/android/mail/ui/FolderItemView;
    :goto_0
    #v3=(Conflicted);
    iget-object v5, p0, Lcom/android/mail/ui/FolderListFragment$HierarchicalFolderListAdapter;->mDropHandler:Lcom/android/mail/ui/FolderItemView$DropHandler;

    iget-object v6, p0, Lcom/android/mail/ui/FolderListFragment$HierarchicalFolderListAdapter;->this$0:Lcom/android/mail/ui/FolderListFragment;

    invoke-static {v6}, Lcom/android/mail/ui/FolderListFragment;->access$1600(Lcom/android/mail/ui/FolderListFragment;)Landroid/support/v4/text/BidiFormatter;

    move-result-object v6

    invoke-virtual {v1, v0, v5, v6}, Lcom/android/mail/ui/FolderItemView;->bind(Lcom/android/mail/providers/Folder;Lcom/android/mail/ui/FolderItemView$DropHandler;Landroid/support/v4/text/BidiFormatter;)V

    .line 1011
    iget-object v5, v0, Lcom/android/mail/providers/Folder;->folderUri:Lcom/android/mail/utils/FolderUri;

    iget-object v6, p0, Lcom/android/mail/ui/FolderListFragment$HierarchicalFolderListAdapter;->this$0:Lcom/android/mail/ui/FolderListFragment;

    invoke-static {v6}, Lcom/android/mail/ui/FolderListFragment;->access$1100(Lcom/android/mail/ui/FolderListFragment;)Lcom/android/mail/utils/FolderUri;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/mail/utils/FolderUri;->equals(Ljava/lang/Object;)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_0

    .line 1012
    iget-object v5, p0, Lcom/android/mail/ui/FolderListFragment$HierarchicalFolderListAdapter;->this$0:Lcom/android/mail/ui/FolderListFragment;

    #v5=(Reference);
    invoke-virtual {v5}, Lcom/android/mail/ui/FolderListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, p1, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1015
    iget-object v5, p0, Lcom/android/mail/ui/FolderListFragment$HierarchicalFolderListAdapter;->this$0:Lcom/android/mail/ui/FolderListFragment;

    invoke-static {v5}, Lcom/android/mail/ui/FolderListFragment;->access$1400(Lcom/android/mail/ui/FolderListFragment;)Lcom/android/mail/providers/Folder;

    move-result-object v5

    if-eqz v5, :cond_3

    iget v5, v0, Lcom/android/mail/providers/Folder;->unreadCount:I

    #v5=(Integer);
    iget-object v6, p0, Lcom/android/mail/ui/FolderListFragment$HierarchicalFolderListAdapter;->this$0:Lcom/android/mail/ui/FolderListFragment;

    invoke-static {v6}, Lcom/android/mail/ui/FolderListFragment;->access$1400(Lcom/android/mail/ui/FolderListFragment;)Lcom/android/mail/providers/Folder;

    move-result-object v6

    iget v6, v6, Lcom/android/mail/providers/Folder;->unreadCount:I

    #v6=(Integer);
    if-eq v5, v6, :cond_3

    .line 1017
    .local v4, unreadCountDiffers:Z
    :goto_1
    #v4=(Boolean);v5=(Conflicted);v6=(Conflicted);
    if-eqz v4, :cond_0

    .line 1018
    iget-object v5, p0, Lcom/android/mail/ui/FolderListFragment$HierarchicalFolderListAdapter;->this$0:Lcom/android/mail/ui/FolderListFragment;

    #v5=(Reference);
    invoke-static {v5}, Lcom/android/mail/ui/FolderListFragment;->access$1400(Lcom/android/mail/ui/FolderListFragment;)Lcom/android/mail/providers/Folder;

    move-result-object v5

    iget v5, v5, Lcom/android/mail/providers/Folder;->unreadCount:I

    #v5=(Integer);
    invoke-virtual {v1, v5}, Lcom/android/mail/ui/FolderItemView;->overrideUnreadCount(I)V

    .line 1021
    .end local v4           #unreadCountDiffers:Z
    :cond_0
    #v5=(Conflicted);
    const v5, 0x7f080076

    #v5=(Integer);
    invoke-virtual {v1, v5}, Lcom/android/mail/ui/FolderItemView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    #v5=(Reference);
    invoke-static {v0, v5}, Lcom/android/mail/providers/Folder;->setFolderBlockColor(Lcom/android/mail/providers/Folder;Landroid/view/View;)V

    .line 1022
    const v5, 0x7f080078

    #v5=(Integer);
    invoke-virtual {v1, v5}, Lcom/android/mail/ui/FolderItemView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    #v5=(Reference);
    check-cast v5, Landroid/widget/ImageView;

    invoke-static {v0, v5}, Lcom/android/mail/providers/Folder;->setIcon(Lcom/android/mail/providers/Folder;Landroid/widget/ImageView;)V

    .line 1023
    return-object v1

    .line 1006
    .end local v1           #folderItemView:Lcom/android/mail/ui/FolderItemView;
    :cond_1
    #v1=(Uninit);v3=(Uninit);v4=(One);v6=(Reference);
    if-eqz v2, :cond_2

    const v3, 0x7f04004a

    .line 1007
    .local v3, resId:I
    :goto_2
    #v3=(Integer);
    iget-object v5, p0, Lcom/android/mail/ui/FolderListFragment$HierarchicalFolderListAdapter;->this$0:Lcom/android/mail/ui/FolderListFragment;

    invoke-static {v5}, Lcom/android/mail/ui/FolderListFragment;->access$900(Lcom/android/mail/ui/FolderListFragment;)Lcom/android/mail/ui/ControllableActivity;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/mail/ui/ControllableActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const/4 v6, 0x0

    #v6=(Null);
    invoke-virtual {v5, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/mail/ui/FolderItemView;

    .restart local v1       #folderItemView:Lcom/android/mail/ui/FolderItemView;
    goto :goto_0

    .line 1006
    .end local v1           #folderItemView:Lcom/android/mail/ui/FolderItemView;
    .end local v3           #resId:I
    :cond_2
    #v1=(Uninit);v3=(Uninit);v6=(Reference);
    const v3, 0x7f040019

    #v3=(Integer);
    goto :goto_2

    .line 1015
    .restart local v1       #folderItemView:Lcom/android/mail/ui/FolderItemView;
    :cond_3
    #v1=(Reference);v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    const/4 v4, 0x0

    #v4=(Null);
    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 989
    const/4 v0, 0x2

    #v0=(PosByte);
    return v0
.end method

.method public notifyAllAccountsChanged()V
    .locals 0

    .prologue
    .line 1064
    return-void
.end method

.method public setAllFolderListCursor(Lcom/android/mail/content/ObjectCursor;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mail/content/ObjectCursor",
            "<",
            "Lcom/android/mail/providers/Folder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1043
    .local p1, cursor:Lcom/android/mail/content/ObjectCursor;,"Lcom/android/mail/content/ObjectCursor<Lcom/android/mail/providers/Folder;>;"
    return-void
.end method

.method public setCursor(Lcom/android/mail/content/ObjectCursor;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mail/content/ObjectCursor",
            "<",
            "Lcom/android/mail/providers/Folder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1028
    .local p1, cursor:Lcom/android/mail/content/ObjectCursor;,"Lcom/android/mail/content/ObjectCursor<Lcom/android/mail/providers/Folder;>;"
    invoke-virtual {p0}, Lcom/android/mail/ui/FolderListFragment$HierarchicalFolderListAdapter;->clear()V

    .line 1029
    iget-object v0, p0, Lcom/android/mail/ui/FolderListFragment$HierarchicalFolderListAdapter;->mParent:Lcom/android/mail/providers/Folder;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 1030
    iget-object v0, p0, Lcom/android/mail/ui/FolderListFragment$HierarchicalFolderListAdapter;->mParent:Lcom/android/mail/providers/Folder;

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/FolderListFragment$HierarchicalFolderListAdapter;->add(Ljava/lang/Object;)V

    .line 1032
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/mail/content/ObjectCursor;->getCount()I

    move-result v0

    #v0=(Integer);
    if-lez v0, :cond_2

    .line 1033
    invoke-virtual {p1}, Lcom/android/mail/content/ObjectCursor;->moveToFirst()Z

    .line 1035
    :cond_1
    invoke-virtual {p1}, Lcom/android/mail/content/ObjectCursor;->getModel()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/FolderListFragment$HierarchicalFolderListAdapter;->add(Ljava/lang/Object;)V

    .line 1036
    invoke-virtual {p1}, Lcom/android/mail/content/ObjectCursor;->moveToNext()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_1

    .line 1038
    :cond_2
    #v0=(Conflicted);
    return-void
.end method
