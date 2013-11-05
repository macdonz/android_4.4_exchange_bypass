.class public final Lcom/android/email/provider/ContentCache$CachedCursor;
.super Landroid/database/CursorWrapper;
.source "ContentCache.java"

# interfaces
.implements Landroid/database/CrossProcessCursor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/provider/ContentCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CachedCursor"
.end annotation


# instance fields
.field private isClosed:Z

.field private final mCache:Lcom/android/email/provider/ContentCache;

.field private mCount:I

.field private final mCursor:Landroid/database/Cursor;

.field private final mId:Ljava/lang/String;

.field private mPosition:I


# virtual methods
.method public close()V
    .locals 4

    .prologue
    .line 309
    iget-object v2, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->mCache:Lcom/android/email/provider/ContentCache;

    #v2=(Reference);
    monitor-enter v2

    .line 310
    :try_start_0
    sget-object v1, Lcom/android/email/provider/ContentCache;->sActiveCursors:Lcom/android/email/provider/ContentCache$CounterMap;

    #v1=(Reference);
    iget-object v3, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->mCursor:Landroid/database/Cursor;

    #v3=(Reference);
    invoke-virtual {v1, v3}, Lcom/android/email/provider/ContentCache$CounterMap;->subtract(Ljava/lang/Object;)I

    move-result v0

    .line 311
    .local v0, count:I
    #v0=(Integer);
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->mCache:Lcom/android/email/provider/ContentCache;

    invoke-static {v1}, Lcom/android/email/provider/ContentCache;->access$100(Lcom/android/email/provider/ContentCache;)Landroid/util/LruCache;

    move-result-object v1

    iget-object v3, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->mId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->mCursor:Landroid/database/Cursor;

    if-eq v1, v3, :cond_0

    .line 312
    invoke-super {p0}, Landroid/database/CursorWrapper;->close()V

    .line 314
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    const/4 v1, 0x1

    #v1=(One);
    iput-boolean v1, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->isClosed:Z

    .line 316
    return-void

    .line 314
    .end local v0           #count:I
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);
    move-exception v1

    :try_start_1
    #v1=(Reference);
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public fillWindow(ILandroid/database/CursorWindow;)V
    .locals 1
    .parameter "pos"
    .parameter "window"

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->mCursor:Landroid/database/Cursor;

    #v0=(Reference);
    check-cast v0, Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1, p2}, Landroid/database/CrossProcessCursor;->fillWindow(ILandroid/database/CursorWindow;)V

    .line 396
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 325
    iget v0, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->mCount:I

    #v0=(Integer);
    if-gez v0, :cond_0

    .line 326
    invoke-super {p0}, Landroid/database/CursorWrapper;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->mCount:I

    .line 328
    :cond_0
    iget v0, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->mCount:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 360
    iget v0, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->mPosition:I

    #v0=(Integer);
    return v0
.end method

.method public getWindow()Landroid/database/CursorWindow;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->mCursor:Landroid/database/Cursor;

    #v0=(Reference);
    check-cast v0, Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v0

    return-object v0
.end method

.method public final isAfterLast()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 385
    #v0=(One);
    iget v1, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->mPosition:I

    #v1=(Integer);
    if-ne v1, v0, :cond_0

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(One);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public final isBeforeFirst()Z
    .locals 2

    .prologue
    .line 380
    iget v0, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->mPosition:I

    #v0=(Integer);
    const/4 v1, -0x1

    #v1=(Byte);
    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Integer);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->isClosed:Z

    #v0=(Boolean);
    return v0
.end method

.method public final isLast()Z
    .locals 2

    .prologue
    .line 375
    iget v0, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->mPosition:I

    #v0=(Integer);
    invoke-virtual {p0}, Lcom/android/email/provider/ContentCache$CachedCursor;->getCount()I

    move-result v1

    #v1=(Integer);
    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Integer);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public final move(I)Z
    .locals 1
    .parameter "offset"

    .prologue
    .line 365
    iget v0, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->mPosition:I

    #v0=(Integer);
    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/email/provider/ContentCache$CachedCursor;->moveToPosition(I)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public moveToFirst()Z
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x0

    #v0=(Null);
    invoke-virtual {p0, v0}, Lcom/android/email/provider/ContentCache$CachedCursor;->moveToPosition(I)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public final moveToLast()Z
    .locals 1

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/android/email/provider/ContentCache$CachedCursor;->getCount()I

    move-result v0

    #v0=(Integer);
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/email/provider/ContentCache$CachedCursor;->moveToPosition(I)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public moveToNext()Z
    .locals 1

    .prologue
    .line 350
    iget v0, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->mPosition:I

    #v0=(Integer);
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/provider/ContentCache$CachedCursor;->moveToPosition(I)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public moveToPosition(I)Z
    .locals 1
    .parameter "pos"

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/android/email/provider/ContentCache$CachedCursor;->getCount()I

    move-result v0

    #v0=(Integer);
    if-ge p1, v0, :cond_0

    const/4 v0, -0x1

    #v0=(Byte);
    if-ge p1, v0, :cond_1

    .line 337
    :cond_0
    #v0=(Integer);
    const/4 v0, 0x0

    .line 340
    :goto_0
    #v0=(Boolean);
    return v0

    .line 339
    :cond_1
    #v0=(Byte);
    iput p1, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->mPosition:I

    .line 340
    const/4 v0, 0x1

    #v0=(One);
    goto :goto_0
.end method

.method public moveToPrevious()Z
    .locals 1

    .prologue
    .line 355
    iget v0, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->mPosition:I

    #v0=(Integer);
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/email/provider/ContentCache$CachedCursor;->moveToPosition(I)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public onMove(II)Z
    .locals 1
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    .line 400
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method
