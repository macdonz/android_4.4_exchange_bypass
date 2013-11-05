.class public abstract Lcom/android/common/widget/CompositeCursorAdapter;
.super Landroid/widget/BaseAdapter;
.source "CompositeCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    }
.end annotation


# instance fields
.field private mCacheValid:Z

.field private final mContext:Landroid/content/Context;

.field private mCount:I

.field private mNotificationNeeded:Z

.field private mNotificationsEnabled:Z

.field private mPartitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/common/widget/CompositeCursorAdapter$Partition;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public addPartition(Lcom/android/common/widget/CompositeCursorAdapter$Partition;)V
    .locals 1
    .parameter "partition"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->invalidate()V

    .line 91
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->notifyDataSetChanged()V

    .line 92
    return-void
.end method

.method public changeCursor(ILandroid/database/Cursor;)V
    .locals 3
    .parameter "partition"
    .parameter "cursor"

    .prologue
    .line 208
    iget-object v1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    #v1=(Reference);
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    iget-object v0, v1, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    .line 209
    .local v0, prevCursor:Landroid/database/Cursor;
    #v0=(Reference);
    if-eq v0, p2, :cond_2

    .line 210
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_0

    .line 211
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 213
    :cond_0
    #v1=(Conflicted);
    iget-object v1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    #v1=(Reference);
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    iput-object p2, v1, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    .line 214
    if-eqz p2, :cond_1

    .line 215
    iget-object v1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    const-string v2, "_id"

    #v2=(Reference);
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    #v2=(Integer);
    iput v2, v1, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->idColumnIndex:I

    .line 217
    :cond_1
    #v2=(Conflicted);
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->invalidate()V

    .line 218
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->notifyDataSetChanged()V

    .line 220
    :cond_2
    return-void
.end method

.method protected ensureCacheValid()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 162
    #v4=(Null);
    iget-boolean v5, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mCacheValid:Z

    #v5=(Boolean);
    if-eqz v5, :cond_0

    .line 180
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Boolean);
    return-void

    .line 166
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Null);
    iput v4, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mCount:I

    .line 167
    iget-object v5, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    #v5=(Reference);
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Reference);v3=(Conflicted);v5=(Conflicted);
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    .line 168
    .local v3, partition:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    iget-object v1, v3, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    .line 169
    .local v1, cursor:Landroid/database/Cursor;
    #v1=(Reference);
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 170
    .local v0, count:I
    :goto_2
    #v0=(Integer);
    iget-boolean v5, v3, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->hasHeader:Z

    if-eqz v5, :cond_2

    .line 171
    if-nez v0, :cond_1

    iget-boolean v5, v3, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->showIfEmpty:Z

    if-eqz v5, :cond_2

    .line 172
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 175
    :cond_2
    iput v0, v3, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->count:I

    .line 176
    iget v5, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mCount:I

    #v5=(Integer);
    add-int/2addr v5, v0

    iput v5, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mCount:I

    goto :goto_1

    .end local v0           #count:I
    :cond_3
    #v0=(Conflicted);v5=(Boolean);
    move v0, v4

    .line 169
    #v0=(Null);
    goto :goto_2

    .line 179
    .end local v1           #cursor:Landroid/database/Cursor;
    .end local v3           #partition:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    :cond_4
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);
    const/4 v4, 0x1

    #v4=(One);
    iput-boolean v4, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mCacheValid:Z

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mContext:Landroid/content/Context;

    #v0=(Reference);
    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->ensureCacheValid()V

    .line 194
    iget v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mCount:I

    #v0=(Integer);
    return v0
.end method

.method public getCursor(I)Landroid/database/Cursor;
    .locals 1
    .parameter "partition"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    iget-object v0, v0, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    .locals 1
    .parameter "partitionIndex"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    return-object v0
.end method

.method public getPartitionCount()I
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method protected invalidate()V
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mCacheValid:Z

    .line 155
    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 525
    iget-boolean v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mNotificationsEnabled:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 526
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mNotificationNeeded:Z

    .line 527
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 531
    :goto_0
    #v0=(Boolean);
    return-void

    .line 529
    :cond_0
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mNotificationNeeded:Z

    goto :goto_0
.end method

.method public setNotificationsEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 517
    iput-boolean p1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mNotificationsEnabled:Z

    .line 518
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mNotificationNeeded:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 519
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->notifyDataSetChanged()V

    .line 521
    :cond_0
    #v0=(Conflicted);
    return-void
.end method
