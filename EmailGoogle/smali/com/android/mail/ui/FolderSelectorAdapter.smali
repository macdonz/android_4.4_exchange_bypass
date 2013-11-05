.class public Lcom/android/mail/ui/FolderSelectorAdapter;
.super Landroid/widget/BaseAdapter;
.source "FolderSelectorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/ui/FolderSelectorAdapter$TreeNode;,
        Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;
    }
.end annotation


# instance fields
.field private mExcludedFolder:Lcom/android/mail/providers/Folder;

.field protected final mFolderRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;",
            ">;"
        }
    .end annotation
.end field

.field private final mHeader:Ljava/lang/String;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mLayout:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;ILjava/lang/String;Lcom/android/mail/providers/Folder;)V
    .locals 1
    .parameter "context"
    .parameter "folders"
    .parameter "layout"
    .parameter "header"
    .parameter "excludedFolder"

    .prologue
    .line 106
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 90
    #p0=(Reference);
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/FolderSelectorAdapter;->mFolderRows:Ljava/util/List;

    .line 107
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/FolderSelectorAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 108
    iput p3, p0, Lcom/android/mail/ui/FolderSelectorAdapter;->mLayout:I

    .line 109
    iput-object p4, p0, Lcom/android/mail/ui/FolderSelectorAdapter;->mHeader:Ljava/lang/String;

    .line 110
    iput-object p5, p0, Lcom/android/mail/ui/FolderSelectorAdapter;->mExcludedFolder:Lcom/android/mail/providers/Folder;

    .line 111
    const/4 v0, 0x0

    #v0=(Null);
    invoke-virtual {p0, p2, v0}, Lcom/android/mail/ui/FolderSelectorAdapter;->createFolderRows(Landroid/database/Cursor;Ljava/util/Set;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/util/Set;ILjava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "folders"
    .parameter
    .parameter "layout"
    .parameter "header"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/Cursor;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 98
    .local p3, initiallySelected:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 90
    #p0=(Reference);
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/FolderSelectorAdapter;->mFolderRows:Ljava/util/List;

    .line 99
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/FolderSelectorAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 100
    iput p4, p0, Lcom/android/mail/ui/FolderSelectorAdapter;->mLayout:I

    .line 101
    iput-object p5, p0, Lcom/android/mail/ui/FolderSelectorAdapter;->mHeader:Ljava/lang/String;

    .line 102
    invoke-virtual {p0, p2, p3}, Lcom/android/mail/ui/FolderSelectorAdapter;->createFolderRows(Landroid/database/Cursor;Ljava/util/Set;)V

    .line 103
    return-void
.end method

.method private folderSort(Ljava/util/List;)V
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 206
    .local p1, folderList:Ljava/util/List;,"Ljava/util/List<Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;>;"
    new-instance v9, Lcom/android/mail/ui/FolderSelectorAdapter$TreeNode;

    #v9=(UninitRef);
    const/4 v11, 0x0

    #v11=(Null);
    invoke-direct {v9, v11}, Lcom/android/mail/ui/FolderSelectorAdapter$TreeNode;-><init>(Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;)V

    .line 208
    .local v9, root:Lcom/android/mail/ui/FolderSelectorAdapter$TreeNode;
    #v9=(Reference);
    const/4 v11, 0x1

    #v11=(One);
    iput-boolean v11, v9, Lcom/android/mail/ui/FolderSelectorAdapter$TreeNode;->mAddedToList:Z

    .line 210
    new-instance v6, Ljava/util/HashMap;

    #v6=(UninitRef);
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v11

    #v11=(Integer);
    invoke-direct {v6, v11}, Ljava/util/HashMap;-><init>(I)V

    .line 211
    .local v6, nodeMap:Ljava/util/Map;,"Ljava/util/Map<Landroid/net/Uri;Lcom/android/mail/ui/FolderSelectorAdapter$TreeNode;>;"
    #v6=(Reference);
    sget-object v11, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    #v11=(Reference);
    invoke-interface {v6, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    #v2=(Conflicted);v3=(Conflicted);v4=(Reference);v5=(Conflicted);v7=(Conflicted);v11=(Conflicted);v12=(Conflicted);
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    #v11=(Boolean);
    if-eqz v11, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;

    .line 214
    .local v3, folderRow:Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;
    invoke-static {v3}, Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;->access$000(Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;)Lcom/android/mail/providers/Folder;

    move-result-object v2

    .line 216
    .local v2, folder:Lcom/android/mail/providers/Folder;
    #v2=(Reference);
    iget-object v11, v2, Lcom/android/mail/providers/Folder;->folderUri:Lcom/android/mail/utils/FolderUri;

    #v11=(Reference);
    invoke-virtual {v11}, Lcom/android/mail/utils/FolderUri;->getComparisonUri()Landroid/net/Uri;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    #v5=(Reference);
    check-cast v5, Lcom/android/mail/ui/FolderSelectorAdapter$TreeNode;

    .line 217
    .local v5, node:Lcom/android/mail/ui/FolderSelectorAdapter$TreeNode;
    if-nez v5, :cond_1

    .line 218
    new-instance v5, Lcom/android/mail/ui/FolderSelectorAdapter$TreeNode;

    .end local v5           #node:Lcom/android/mail/ui/FolderSelectorAdapter$TreeNode;
    #v5=(UninitRef);
    invoke-direct {v5, v3}, Lcom/android/mail/ui/FolderSelectorAdapter$TreeNode;-><init>(Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;)V

    .line 219
    .restart local v5       #node:Lcom/android/mail/ui/FolderSelectorAdapter$TreeNode;
    #v5=(Reference);
    iget-object v11, v2, Lcom/android/mail/providers/Folder;->folderUri:Lcom/android/mail/utils/FolderUri;

    invoke-virtual {v11}, Lcom/android/mail/utils/FolderUri;->getComparisonUri()Landroid/net/Uri;

    move-result-object v11

    invoke-interface {v6, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    :goto_1
    invoke-static {v3}, Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;->access$000(Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;)Lcom/android/mail/providers/Folder;

    move-result-object v11

    iget-object v11, v11, Lcom/android/mail/providers/Folder;->parent:Landroid/net/Uri;

    if-eqz v11, :cond_0

    invoke-static {v3}, Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;->access$000(Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;)Lcom/android/mail/providers/Folder;

    move-result-object v11

    iget-object v11, v11, Lcom/android/mail/providers/Folder;->parent:Landroid/net/Uri;

    sget-object v12, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    #v12=(Reference);
    invoke-virtual {v11, v12}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v11

    #v11=(Boolean);
    if-eqz v11, :cond_2

    .line 225
    :cond_0
    #v11=(Conflicted);v12=(Conflicted);
    invoke-virtual {v9, v5}, Lcom/android/mail/ui/FolderSelectorAdapter$TreeNode;->addChild(Lcom/android/mail/ui/FolderSelectorAdapter$TreeNode;)V

    goto :goto_0

    .line 221
    :cond_1
    #v11=(Reference);
    iput-object v3, v5, Lcom/android/mail/ui/FolderSelectorAdapter$TreeNode;->mWrappedObject:Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;

    goto :goto_1

    .line 228
    :cond_2
    #v11=(Boolean);v12=(Reference);
    iget-object v11, v2, Lcom/android/mail/providers/Folder;->parent:Landroid/net/Uri;

    #v11=(Reference);
    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    #v7=(Reference);
    check-cast v7, Lcom/android/mail/ui/FolderSelectorAdapter$TreeNode;

    .line 229
    .local v7, parentNode:Lcom/android/mail/ui/FolderSelectorAdapter$TreeNode;
    if-nez v7, :cond_3

    .line 230
    new-instance v7, Lcom/android/mail/ui/FolderSelectorAdapter$TreeNode;

    .end local v7           #parentNode:Lcom/android/mail/ui/FolderSelectorAdapter$TreeNode;
    #v7=(UninitRef);
    const/4 v11, 0x0

    #v11=(Null);
    invoke-direct {v7, v11}, Lcom/android/mail/ui/FolderSelectorAdapter$TreeNode;-><init>(Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;)V

    .line 231
    .restart local v7       #parentNode:Lcom/android/mail/ui/FolderSelectorAdapter$TreeNode;
    #v7=(Reference);
    iget-object v11, v2, Lcom/android/mail/providers/Folder;->parent:Landroid/net/Uri;

    #v11=(Reference);
    invoke-interface {v6, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    :cond_3
    invoke-virtual {v7, v5}, Lcom/android/mail/ui/FolderSelectorAdapter$TreeNode;->addChild(Lcom/android/mail/ui/FolderSelectorAdapter$TreeNode;)V

    goto :goto_0

    .line 237
    .end local v2           #folder:Lcom/android/mail/providers/Folder;
    .end local v3           #folderRow:Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;
    .end local v5           #node:Lcom/android/mail/ui/FolderSelectorAdapter$TreeNode;
    .end local v7           #parentNode:Lcom/android/mail/ui/FolderSelectorAdapter$TreeNode;
    :cond_4
    #v2=(Conflicted);v3=(Conflicted);v5=(Conflicted);v7=(Conflicted);v11=(Boolean);v12=(Conflicted);
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 241
    new-instance v10, Ljava/util/ArrayDeque;

    #v10=(UninitRef);
    const/16 v11, 0xa

    #v11=(PosByte);
    invoke-direct {v10, v11}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 242
    .local v10, stack:Ljava/util/Deque;,"Ljava/util/Deque<Lcom/android/mail/ui/FolderSelectorAdapter$TreeNode;>;"
    #v10=(Reference);
    invoke-interface {v10, v9}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 244
    :cond_5
    :goto_2
    #v0=(Conflicted);v1=(Conflicted);v8=(Conflicted);
    invoke-interface {v10}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/mail/ui/FolderSelectorAdapter$TreeNode;

    .local v1, currentNode:Lcom/android/mail/ui/FolderSelectorAdapter$TreeNode;
    if-eqz v1, :cond_9

    .line 245
    invoke-interface {v10}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v7

    #v7=(Reference);
    check-cast v7, Lcom/android/mail/ui/FolderSelectorAdapter$TreeNode;

    .line 249
    .restart local v7       #parentNode:Lcom/android/mail/ui/FolderSelectorAdapter$TreeNode;
    if-eqz v7, :cond_7

    iget-boolean v11, v1, Lcom/android/mail/ui/FolderSelectorAdapter$TreeNode;->mAddedToList:Z

    #v11=(Boolean);
    if-nez v11, :cond_7

    .line 252
    iget-object v11, v7, Lcom/android/mail/ui/FolderSelectorAdapter$TreeNode;->mWrappedObject:Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;

    #v11=(Reference);
    if-eqz v11, :cond_6

    iget-object v11, v7, Lcom/android/mail/ui/FolderSelectorAdapter$TreeNode;->mWrappedObject:Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;

    iget-object v11, v11, Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;->mPathName:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    #v11=(Boolean);
    if-eqz v11, :cond_8

    .line 254
    :cond_6
    #v11=(Conflicted);
    iget-object v11, v1, Lcom/android/mail/ui/FolderSelectorAdapter$TreeNode;->mWrappedObject:Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;

    #v11=(Reference);
    invoke-static {v11}, Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;->access$000(Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;)Lcom/android/mail/providers/Folder;

    move-result-object v11

    iget-object v8, v11, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    .line 263
    .local v8, pathName:Ljava/lang/String;
    :goto_3
    #v8=(Reference);
    iget-object v11, v1, Lcom/android/mail/ui/FolderSelectorAdapter$TreeNode;->mWrappedObject:Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;

    iput-object v8, v11, Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;->mPathName:Ljava/lang/String;

    .line 264
    iget-object v11, v1, Lcom/android/mail/ui/FolderSelectorAdapter$TreeNode;->mWrappedObject:Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;

    invoke-interface {p1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    const/4 v11, 0x1

    #v11=(One);
    iput-boolean v11, v1, Lcom/android/mail/ui/FolderSelectorAdapter$TreeNode;->mAddedToList:Z

    .line 268
    .end local v8           #pathName:Ljava/lang/String;
    :cond_7
    #v8=(Conflicted);v11=(PosByte);
    invoke-virtual {v1}, Lcom/android/mail/ui/FolderSelectorAdapter$TreeNode;->pollChild()Lcom/android/mail/ui/FolderSelectorAdapter$TreeNode;

    move-result-object v0

    .line 269
    .local v0, childNode:Lcom/android/mail/ui/FolderSelectorAdapter$TreeNode;
    #v0=(Reference);
    if-eqz v0, :cond_5

    .line 271
    invoke-interface {v10, v1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 273
    invoke-interface {v10, v0}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    goto :goto_2

    .line 260
    .end local v0           #childNode:Lcom/android/mail/ui/FolderSelectorAdapter$TreeNode;
    :cond_8
    #v0=(Conflicted);v11=(Boolean);
    new-instance v11, Ljava/lang/StringBuilder;

    #v11=(UninitRef);
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #v11=(Reference);
    iget-object v12, v7, Lcom/android/mail/ui/FolderSelectorAdapter$TreeNode;->mWrappedObject:Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;

    #v12=(Reference);
    iget-object v12, v12, Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;->mPathName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Lcom/android/mail/ui/FolderSelectorAdapter$TreeNode;->mWrappedObject:Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;

    invoke-static {v12}, Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;->access$000(Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;)Lcom/android/mail/providers/Folder;

    move-result-object v12

    iget-object v12, v12, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .restart local v8       #pathName:Ljava/lang/String;
    #v8=(Reference);
    goto :goto_3

    .line 277
    .end local v7           #parentNode:Lcom/android/mail/ui/FolderSelectorAdapter$TreeNode;
    .end local v8           #pathName:Ljava/lang/String;
    :cond_9
    #v7=(Conflicted);v8=(Conflicted);v11=(PosByte);v12=(Conflicted);
    return-void
.end method

.method private hasHeader()Z
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/mail/ui/FolderSelectorAdapter;->mHeader:Ljava/lang/String;

    #v0=(Reference);
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method


# virtual methods
.method public correctPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 379
    invoke-direct {p0}, Lcom/android/mail/ui/FolderSelectorAdapter;->hasHeader()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    .end local p1
    :cond_0
    return p1
.end method

.method protected createFolderRows(Landroid/database/Cursor;Ljava/util/Set;)V
    .locals 8
    .parameter "folders"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p2, initiallySelected:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 154
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    return-void

    .line 118
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);
    new-instance v0, Ljava/util/ArrayList;

    #v0=(UninitRef);
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    #v7=(Integer);
    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 120
    .local v0, allFolders:Ljava/util/List;,"Ljava/util/List<Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;>;"
    #v0=(Reference);
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    #v7=(Boolean);
    if-eqz v7, :cond_2

    .line 122
    :cond_1
    #v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    new-instance v1, Lcom/android/mail/providers/Folder;

    #v1=(UninitRef);
    invoke-direct {v1, p1}, Lcom/android/mail/providers/Folder;-><init>(Landroid/database/Cursor;)V

    .line 123
    .local v1, folder:Lcom/android/mail/providers/Folder;
    #v1=(Reference);
    if-eqz p2, :cond_4

    iget-object v7, v1, Lcom/android/mail/providers/Folder;->folderUri:Lcom/android/mail/utils/FolderUri;

    #v7=(Reference);
    invoke-virtual {v7}, Lcom/android/mail/utils/FolderUri;->getComparisonUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    #v7=(Boolean);
    if-eqz v7, :cond_4

    const/4 v3, 0x1

    .line 126
    .local v3, isSelected:Z
    :goto_1
    #v3=(Boolean);
    new-instance v4, Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;

    #v4=(UninitRef);
    invoke-direct {v4, v1, v3}, Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;-><init>(Lcom/android/mail/providers/Folder;Z)V

    .line 127
    .local v4, row:Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;
    #v4=(Reference);
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 131
    .end local v1           #folder:Lcom/android/mail/providers/Folder;
    .end local v3           #isSelected:Z
    .end local v4           #row:Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;
    :cond_2
    #v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    invoke-direct {p0, v0}, Lcom/android/mail/ui/FolderSelectorAdapter;->folderSort(Ljava/util/List;)V

    .line 134
    new-instance v6, Ljava/util/ArrayList;

    #v6=(UninitRef);
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v6, userUnselected:Ljava/util/List;,"Ljava/util/List<Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;>;"
    #v6=(Reference);
    new-instance v5, Ljava/util/ArrayList;

    #v5=(UninitRef);
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v5, systemUnselected:Ljava/util/List;,"Ljava/util/List<Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;>;"
    #v5=(Reference);
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    #v2=(Reference);v7=(Conflicted);
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    #v7=(Boolean);
    if-eqz v7, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    #v4=(Reference);
    check-cast v4, Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;

    .line 140
    .restart local v4       #row:Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;
    invoke-virtual {v4}, Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;->getFolder()Lcom/android/mail/providers/Folder;

    move-result-object v1

    .line 141
    .restart local v1       #folder:Lcom/android/mail/providers/Folder;
    #v1=(Reference);
    invoke-virtual {p0, v1}, Lcom/android/mail/ui/FolderSelectorAdapter;->meetsRequirements(Lcom/android/mail/providers/Folder;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/mail/ui/FolderSelectorAdapter;->mExcludedFolder:Lcom/android/mail/providers/Folder;

    #v7=(Reference);
    invoke-static {v1, v7}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    #v7=(Boolean);
    if-nez v7, :cond_3

    .line 143
    invoke-virtual {v4}, Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;->isPresent()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 144
    iget-object v7, p0, Lcom/android/mail/ui/FolderSelectorAdapter;->mFolderRows:Ljava/util/List;

    #v7=(Reference);
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 123
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #row:Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;
    .end local v5           #systemUnselected:Ljava/util/List;,"Ljava/util/List<Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;>;"
    .end local v6           #userUnselected:Ljava/util/List;,"Ljava/util/List<Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;>;"
    :cond_4
    #v2=(Uninit);v4=(Conflicted);v5=(Uninit);v6=(Uninit);v7=(Boolean);
    const/4 v3, 0x0

    #v3=(Null);
    goto :goto_1

    .line 145
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #row:Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;
    .restart local v5       #systemUnselected:Ljava/util/List;,"Ljava/util/List<Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;>;"
    .restart local v6       #userUnselected:Ljava/util/List;,"Ljava/util/List<Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;>;"
    :cond_5
    #v2=(Reference);v3=(Conflicted);v4=(Reference);v5=(Reference);v6=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/providers/Folder;->isProviderFolder()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 146
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 148
    :cond_6
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 152
    .end local v1           #folder:Lcom/android/mail/providers/Folder;
    .end local v4           #row:Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;
    :cond_7
    #v1=(Conflicted);v4=(Conflicted);
    iget-object v7, p0, Lcom/android/mail/ui/FolderSelectorAdapter;->mFolderRows:Ljava/util/List;

    #v7=(Reference);
    invoke-interface {v7, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 153
    iget-object v7, p0, Lcom/android/mail/ui/FolderSelectorAdapter;->mFolderRows:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/mail/ui/FolderSelectorAdapter;->mFolderRows:Ljava/util/List;

    #v0=(Reference);
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    #v1=(Integer);
    invoke-direct {p0}, Lcom/android/mail/ui/FolderSelectorAdapter;->hasHeader()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    #v0=(Integer);
    return v0

    :cond_0
    #v0=(Boolean);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 296
    invoke-virtual {p0, p1}, Lcom/android/mail/ui/FolderSelectorAdapter;->isHeader(I)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/mail/ui/FolderSelectorAdapter;->mHeader:Ljava/lang/String;

    .line 299
    :goto_0
    #v0=(Reference);v1=(Conflicted);
    return-object v0

    :cond_0
    #v0=(Boolean);v1=(Uninit);
    iget-object v0, p0, Lcom/android/mail/ui/FolderSelectorAdapter;->mFolderRows:Ljava/util/List;

    #v0=(Reference);
    invoke-virtual {p0, p1}, Lcom/android/mail/ui/FolderSelectorAdapter;->correctPosition(I)I

    move-result v1

    #v1=(Integer);
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 304
    invoke-virtual {p0, p1}, Lcom/android/mail/ui/FolderSelectorAdapter;->isHeader(I)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 305
    const-wide/16 v0, -0x1

    .line 307
    :goto_0
    #v0=(LongLo);v1=(LongHi);
    return-wide v0

    :cond_0
    #v0=(Boolean);v1=(Uninit);
    int-to-long v0, p1

    #v0=(LongLo);v1=(LongHi);
    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 312
    invoke-virtual {p0, p1}, Lcom/android/mail/ui/FolderSelectorAdapter;->isHeader(I)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 313
    const/4 v0, 0x0

    .line 315
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    #v0=(One);
    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v10, 0x0

    .line 334
    #v10=(Null);
    invoke-virtual {p0, p1}, Lcom/android/mail/ui/FolderSelectorAdapter;->isHeader(I)Z

    move-result v8

    #v8=(Boolean);
    if-eqz v8, :cond_1

    .line 335
    if-eqz p2, :cond_0

    check-cast p2, Landroid/widget/TextView;

    .end local p2
    move-object v7, p2

    .line 337
    .local v7, view:Landroid/widget/TextView;
    :goto_0
    #v7=(Reference);v8=(Conflicted);v9=(Conflicted);
    iget-object v8, p0, Lcom/android/mail/ui/FolderSelectorAdapter;->mHeader:Ljava/lang/String;

    #v8=(Reference);
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    .end local v7           #view:Landroid/widget/TextView;
    :goto_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v8=(Conflicted);
    return-object v7

    .line 335
    .restart local p2
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Boolean);v9=(Uninit);
    iget-object v8, p0, Lcom/android/mail/ui/FolderSelectorAdapter;->mInflater:Landroid/view/LayoutInflater;

    #v8=(Reference);
    const v9, 0x7f040049

    #v9=(Integer);
    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    move-object v7, v8

    #v7=(Reference);
    goto :goto_0

    .line 342
    :cond_1
    #v7=(Uninit);v8=(Boolean);v9=(Uninit);
    if-nez p2, :cond_4

    .line 343
    iget-object v8, p0, Lcom/android/mail/ui/FolderSelectorAdapter;->mInflater:Landroid/view/LayoutInflater;

    #v8=(Reference);
    iget v9, p0, Lcom/android/mail/ui/FolderSelectorAdapter;->mLayout:I

    #v9=(Integer);
    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 347
    .local v7, view:Landroid/view/View;
    :goto_2
    #v7=(Reference);v8=(Conflicted);v9=(Conflicted);
    invoke-virtual {p0, p1}, Lcom/android/mail/ui/FolderSelectorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    #v6=(Reference);
    check-cast v6, Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;

    .line 348
    .local v6, row:Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;
    invoke-virtual {v6}, Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;->getFolder()Lcom/android/mail/providers/Folder;

    move-result-object v3

    .line 349
    .local v3, folder:Lcom/android/mail/providers/Folder;
    #v3=(Reference);
    iget-object v8, v6, Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;->mPathName:Ljava/lang/String;

    #v8=(Reference);
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    #v8=(Boolean);
    if-nez v8, :cond_5

    iget-object v4, v6, Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;->mPathName:Ljava/lang/String;

    .line 351
    .local v4, folderDisplay:Ljava/lang/String;
    :goto_3
    #v4=(Reference);
    const v8, 0x7f08010f

    #v8=(Integer);
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/CompoundButton;

    .line 352
    .local v0, checkBox:Landroid/widget/CompoundButton;
    if-eqz v0, :cond_2

    .line 355
    invoke-virtual {v0, v10}, Landroid/widget/CompoundButton;->setClickable(Z)V

    .line 356
    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setText(Ljava/lang/CharSequence;)V

    .line 357
    invoke-virtual {v6}, Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;->isPresent()Z

    move-result v8

    #v8=(Boolean);
    invoke-virtual {v0, v8}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 359
    :cond_2
    #v8=(Integer);
    const v8, 0x7f080138

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Landroid/widget/TextView;

    .line 360
    .local v2, display:Landroid/widget/TextView;
    if-eqz v2, :cond_3

    .line 361
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    :cond_3
    const v8, 0x7f080076

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 364
    .local v1, colorBlock:Landroid/view/View;
    #v1=(Reference);
    const v8, 0x7f080078

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    #v5=(Reference);
    check-cast v5, Landroid/widget/ImageView;

    .line 365
    .local v5, iconView:Landroid/widget/ImageView;
    invoke-static {v3, v1}, Lcom/android/mail/providers/Folder;->setFolderBlockColor(Lcom/android/mail/providers/Folder;Landroid/view/View;)V

    .line 366
    invoke-static {v3, v5}, Lcom/android/mail/providers/Folder;->setIcon(Lcom/android/mail/providers/Folder;Landroid/widget/ImageView;)V

    goto :goto_1

    .line 345
    .end local v0           #checkBox:Landroid/widget/CompoundButton;
    .end local v1           #colorBlock:Landroid/view/View;
    .end local v2           #display:Landroid/widget/TextView;
    .end local v3           #folder:Lcom/android/mail/providers/Folder;
    .end local v4           #folderDisplay:Ljava/lang/String;
    .end local v5           #iconView:Landroid/widget/ImageView;
    .end local v6           #row:Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;
    .end local v7           #view:Landroid/view/View;
    :cond_4
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Boolean);v9=(Uninit);
    move-object v7, p2

    .restart local v7       #view:Landroid/view/View;
    #v7=(Reference);
    goto :goto_2

    .line 349
    .restart local v3       #folder:Lcom/android/mail/providers/Folder;
    .restart local v6       #row:Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;
    :cond_5
    #v3=(Reference);v6=(Reference);v9=(Conflicted);
    iget-object v4, v3, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    #v4=(Reference);
    goto :goto_3
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 321
    const/4 v0, 0x2

    #v0=(PosByte);
    return v0
.end method

.method protected final isHeader(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 328
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/mail/ui/FolderSelectorAdapter;->hasHeader()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    #v0=(Conflicted);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method protected meetsRequirements(Lcom/android/mail/providers/Folder;)Z
    .locals 1
    .parameter "folder"

    .prologue
    .line 285
    const/16 v0, 0x8

    #v0=(PosByte);
    invoke-virtual {p1, v0}, Lcom/android/mail/providers/Folder;->supportsCapability(I)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/mail/providers/Folder;->isTrash()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/FolderSelectorAdapter;->mExcludedFolder:Lcom/android/mail/providers/Folder;

    #v0=(Reference);
    invoke-static {p1, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method
