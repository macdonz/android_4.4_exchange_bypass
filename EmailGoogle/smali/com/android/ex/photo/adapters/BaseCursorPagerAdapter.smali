.class public abstract Lcom/android/ex/photo/adapters/BaseCursorPagerAdapter;
.super Lcom/android/ex/photo/adapters/BaseFragmentPagerAdapter;
.source "BaseCursorPagerAdapter.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mCursor:Landroid/database/Cursor;

.field protected mItemPosition:Landroid/util/SparseIntArray;

.field protected final mObjectRowMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mRowIDColumn:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Landroid/database/Cursor;)V
    .locals 1
    .parameter "context"
    .parameter "fm"
    .parameter "c"

    .prologue
    .line 55
    invoke-direct {p0, p2}, Lcom/android/ex/photo/adapters/BaseFragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 46
    #p0=(Reference);
    new-instance v0, Ljava/util/HashMap;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/ex/photo/adapters/BaseCursorPagerAdapter;->mObjectRowMap:Ljava/util/HashMap;

    .line 56
    invoke-direct {p0, p1, p3}, Lcom/android/ex/photo/adapters/BaseCursorPagerAdapter;->init(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 57
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 3
    .parameter "context"
    .parameter "c"

    .prologue
    .line 231
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 232
    .local v0, cursorPresent:Z
    :goto_0
    #v0=(Boolean);
    iput-object p2, p0, Lcom/android/ex/photo/adapters/BaseCursorPagerAdapter;->mCursor:Landroid/database/Cursor;

    .line 233
    iput-object p1, p0, Lcom/android/ex/photo/adapters/BaseCursorPagerAdapter;->mContext:Landroid/content/Context;

    .line 234
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/ex/photo/adapters/BaseCursorPagerAdapter;->mCursor:Landroid/database/Cursor;

    #v1=(Reference);
    const-string v2, "uri"

    #v2=(Reference);
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    :goto_1
    #v1=(Integer);v2=(Conflicted);
    iput v1, p0, Lcom/android/ex/photo/adapters/BaseCursorPagerAdapter;->mRowIDColumn:I

    .line 236
    return-void

    .line 231
    .end local v0           #cursorPresent:Z
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0

    .line 234
    .restart local v0       #cursorPresent:Z
    :cond_1
    #v0=(Boolean);
    const/4 v1, -0x1

    #v1=(Byte);
    goto :goto_1
.end method

.method private moveCursorTo(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/ex/photo/adapters/BaseCursorPagerAdapter;->mCursor:Landroid/database/Cursor;

    #v0=(Reference);
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/photo/adapters/BaseCursorPagerAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/ex/photo/adapters/BaseCursorPagerAdapter;->mCursor:Landroid/database/Cursor;

    #v0=(Reference);
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    .line 224
    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Conflicted);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method private setItemPosition()V
    .locals 5

    .prologue
    .line 243
    iget-object v3, p0, Lcom/android/ex/photo/adapters/BaseCursorPagerAdapter;->mCursor:Landroid/database/Cursor;

    #v3=(Reference);
    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/ex/photo/adapters/BaseCursorPagerAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_1

    .line 244
    :cond_0
    #v3=(Conflicted);
    const/4 v3, 0x0

    #v3=(Null);
    iput-object v3, p0, Lcom/android/ex/photo/adapters/BaseCursorPagerAdapter;->mItemPosition:Landroid/util/SparseIntArray;

    .line 258
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Boolean);v4=(Conflicted);
    return-void

    .line 248
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v4=(Uninit);
    new-instance v0, Landroid/util/SparseIntArray;

    #v0=(UninitRef);
    iget-object v3, p0, Lcom/android/ex/photo/adapters/BaseCursorPagerAdapter;->mCursor:Landroid/database/Cursor;

    #v3=(Reference);
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    #v3=(Integer);
    invoke-direct {v0, v3}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 250
    .local v0, itemPosition:Landroid/util/SparseIntArray;
    #v0=(Reference);
    iget-object v3, p0, Lcom/android/ex/photo/adapters/BaseCursorPagerAdapter;->mCursor:Landroid/database/Cursor;

    #v3=(Reference);
    const/4 v4, -0x1

    #v4=(Byte);
    invoke-interface {v3, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 251
    :goto_1
    #v1=(Conflicted);v2=(Conflicted);v4=(Integer);
    iget-object v3, p0, Lcom/android/ex/photo/adapters/BaseCursorPagerAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_2

    .line 252
    iget-object v3, p0, Lcom/android/ex/photo/adapters/BaseCursorPagerAdapter;->mCursor:Landroid/database/Cursor;

    #v3=(Reference);
    iget v4, p0, Lcom/android/ex/photo/adapters/BaseCursorPagerAdapter;->mRowIDColumn:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 253
    .local v2, rowId:I
    #v2=(Integer);
    iget-object v3, p0, Lcom/android/ex/photo/adapters/BaseCursorPagerAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    .line 255
    .local v1, position:I
    #v1=(Integer);
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->append(II)V

    goto :goto_1

    .line 257
    .end local v1           #position:I
    .end local v2           #rowId:I
    :cond_2
    #v1=(Conflicted);v2=(Conflicted);v3=(Boolean);
    iput-object v0, p0, Lcom/android/ex/photo/adapters/BaseCursorPagerAdapter;->mItemPosition:Landroid/util/SparseIntArray;

    goto :goto_0
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/ex/photo/adapters/BaseCursorPagerAdapter;->mObjectRowMap:Ljava/util/HashMap;

    #v0=(Reference);
    invoke-virtual {v0, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-super {p0, p1, p2, p3}, Lcom/android/ex/photo/adapters/BaseFragmentPagerAdapter;->destroyItem(Landroid/view/View;ILjava/lang/Object;)V

    .line 114
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/ex/photo/adapters/BaseCursorPagerAdapter;->mCursor:Landroid/database/Cursor;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/ex/photo/adapters/BaseCursorPagerAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 84
    :goto_0
    #v0=(Integer);
    return v0

    :cond_0
    #v0=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/ex/photo/adapters/BaseCursorPagerAdapter;->mCursor:Landroid/database/Cursor;

    #v0=(Reference);
    return-object v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 2
    .parameter "position"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/ex/photo/adapters/BaseCursorPagerAdapter;->mCursor:Landroid/database/Cursor;

    #v0=(Reference);
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/ex/photo/adapters/BaseCursorPagerAdapter;->moveCursorTo(I)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/ex/photo/adapters/BaseCursorPagerAdapter;->mContext:Landroid/content/Context;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/ex/photo/adapters/BaseCursorPagerAdapter;->mCursor:Landroid/database/Cursor;

    #v1=(Reference);
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/ex/photo/adapters/BaseCursorPagerAdapter;->getItem(Landroid/content/Context;Landroid/database/Cursor;I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 76
    :goto_0
    #v1=(Conflicted);
    return-object v0

    :cond_0
    #v0=(Conflicted);v1=(Uninit);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public abstract getItem(Landroid/content/Context;Landroid/database/Cursor;I)Landroid/support/v4/app/Fragment;
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 4
    .parameter "object"

    .prologue
    const/4 v0, -0x2

    .line 118
    #v0=(Byte);
    iget-object v2, p0, Lcom/android/ex/photo/adapters/BaseCursorPagerAdapter;->mObjectRowMap:Ljava/util/HashMap;

    #v2=(Reference);
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Ljava/lang/Integer;

    .line 119
    .local v1, rowId:Ljava/lang/Integer;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/ex/photo/adapters/BaseCursorPagerAdapter;->mItemPosition:Landroid/util/SparseIntArray;

    if-nez v2, :cond_1

    .line 124
    :cond_0
    :goto_0
    #v0=(Integer);v3=(Conflicted);
    return v0

    .line 123
    :cond_1
    #v0=(Byte);v3=(Uninit);
    iget-object v2, p0, Lcom/android/ex/photo/adapters/BaseCursorPagerAdapter;->mItemPosition:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    #v3=(Integer);
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 124
    .local v0, position:I
    #v0=(Integer);
    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 4
    .parameter "container"
    .parameter "position"

    .prologue
    .line 90
    iget-object v2, p0, Lcom/android/ex/photo/adapters/BaseCursorPagerAdapter;->mCursor:Landroid/database/Cursor;

    #v2=(Reference);
    if-nez v2, :cond_0

    .line 91
    new-instance v2, Ljava/lang/IllegalStateException;

    #v2=(UninitRef);
    const-string v3, "this should only be called when the cursor is valid"

    #v3=(Reference);
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #v2=(Reference);
    throw v2

    .line 95
    :cond_0
    #v3=(Uninit);
    invoke-direct {p0, p2}, Lcom/android/ex/photo/adapters/BaseCursorPagerAdapter;->moveCursorTo(I)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_2

    .line 96
    iget-object v2, p0, Lcom/android/ex/photo/adapters/BaseCursorPagerAdapter;->mCursor:Landroid/database/Cursor;

    #v2=(Reference);
    iget v3, p0, Lcom/android/ex/photo/adapters/BaseCursorPagerAdapter;->mRowIDColumn:I

    #v3=(Integer);
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 102
    .local v1, rowId:Ljava/lang/Integer;
    :goto_0
    #v1=(Reference);v3=(Conflicted);
    invoke-super {p0, p1, p2}, Lcom/android/ex/photo/adapters/BaseFragmentPagerAdapter;->instantiateItem(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    .line 103
    .local v0, obj:Ljava/lang/Object;
    #v0=(Reference);
    if-eqz v0, :cond_1

    .line 104
    iget-object v2, p0, Lcom/android/ex/photo/adapters/BaseCursorPagerAdapter;->mObjectRowMap:Ljava/util/HashMap;

    #v2=(Reference);
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_1
    #v2=(Conflicted);
    return-object v0

    .line 98
    .end local v0           #obj:Ljava/lang/Object;
    .end local v1           #rowId:Ljava/lang/Integer;
    :cond_2
    #v0=(Uninit);v1=(Uninit);v2=(Boolean);v3=(Uninit);
    const/4 v1, 0x0

    .restart local v1       #rowId:Ljava/lang/Integer;
    #v1=(Null);
    goto :goto_0
.end method

.method protected makeFragmentName(II)Ljava/lang/String;
    .locals 3
    .parameter "viewId"
    .parameter "index"

    .prologue
    .line 208
    invoke-direct {p0, p2}, Lcom/android/ex/photo/adapters/BaseCursorPagerAdapter;->moveCursorTo(I)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    const-string v1, "android:pager:"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/photo/adapters/BaseCursorPagerAdapter;->mCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/ex/photo/adapters/BaseCursorPagerAdapter;->mRowIDColumn:I

    #v2=(Integer);
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    #v1=(Integer);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);
    return-object v0

    :cond_0
    #v0=(Boolean);v1=(Uninit);v2=(Uninit);
    invoke-super {p0, p1, p2}, Lcom/android/ex/photo/adapters/BaseFragmentPagerAdapter;->makeFragmentName(II)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    goto :goto_0
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 5
    .parameter "newCursor"

    .prologue
    const/4 v2, -0x1

    .line 172
    #v2=(Byte);
    const-string v1, "BaseCursorPagerAdapter"

    #v1=(Reference);
    const/4 v3, 0x2

    #v3=(PosByte);
    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 173
    const-string v3, "BaseCursorPagerAdapter"

    #v3=(Reference);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #v1=(Reference);
    const-string v4, "swapCursor old="

    #v4=(Reference);
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, p0, Lcom/android/ex/photo/adapters/BaseCursorPagerAdapter;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    #v1=(Integer);
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    #v1=(Reference);
    const-string v4, "; new="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p1, :cond_2

    move v1, v2

    :goto_1
    #v1=(Integer);
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_0
    #v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    iget-object v1, p0, Lcom/android/ex/photo/adapters/BaseCursorPagerAdapter;->mCursor:Landroid/database/Cursor;

    #v1=(Reference);
    if-ne p1, v1, :cond_3

    .line 178
    const/4 v0, 0x0

    .line 190
    :goto_2
    #v0=(Reference);v1=(Conflicted);
    return-object v0

    .line 173
    :cond_1
    #v0=(Uninit);v1=(Reference);v3=(Reference);v4=(Reference);
    iget-object v1, p0, Lcom/android/ex/photo/adapters/BaseCursorPagerAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    #v1=(Integer);
    goto :goto_0

    :cond_2
    #v1=(Reference);
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    #v1=(Integer);
    goto :goto_1

    .line 180
    :cond_3
    #v1=(Reference);v3=(Conflicted);v4=(Conflicted);
    iget-object v0, p0, Lcom/android/ex/photo/adapters/BaseCursorPagerAdapter;->mCursor:Landroid/database/Cursor;

    .line 181
    .local v0, oldCursor:Landroid/database/Cursor;
    #v0=(Reference);
    iput-object p1, p0, Lcom/android/ex/photo/adapters/BaseCursorPagerAdapter;->mCursor:Landroid/database/Cursor;

    .line 182
    if-eqz p1, :cond_4

    .line 183
    const-string v1, "uri"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    #v1=(Integer);
    iput v1, p0, Lcom/android/ex/photo/adapters/BaseCursorPagerAdapter;->mRowIDColumn:I

    .line 188
    :goto_3
    #v1=(Conflicted);
    invoke-direct {p0}, Lcom/android/ex/photo/adapters/BaseCursorPagerAdapter;->setItemPosition()V

    .line 189
    invoke-virtual {p0}, Lcom/android/ex/photo/adapters/BaseCursorPagerAdapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 185
    :cond_4
    #v1=(Reference);
    iput v2, p0, Lcom/android/ex/photo/adapters/BaseCursorPagerAdapter;->mRowIDColumn:I

    goto :goto_3
.end method
