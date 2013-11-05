.class public Lcom/android/ex/photo/adapters/PhotoPagerAdapter;
.super Lcom/android/ex/photo/adapters/BaseCursorPagerAdapter;
.source "PhotoPagerAdapter.java"


# instance fields
.field protected mContentUriIndex:I

.field protected mDisplayThumbsFullScreen:Z

.field protected mLoadingIndex:I

.field protected final mMaxScale:F

.field protected mThumbnailUriIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Landroid/database/Cursor;FZ)V
    .locals 0
    .parameter "context"
    .parameter "fm"
    .parameter "c"
    .parameter "maxScale"
    .parameter "thumbsFullScreen"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/android/ex/photo/adapters/BaseCursorPagerAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Landroid/database/Cursor;)V

    .line 44
    #p0=(Reference);
    iput p4, p0, Lcom/android/ex/photo/adapters/PhotoPagerAdapter;->mMaxScale:F

    .line 45
    iput-boolean p5, p0, Lcom/android/ex/photo/adapters/PhotoPagerAdapter;->mDisplayThumbsFullScreen:Z

    .line 46
    return-void
.end method


# virtual methods
.method public getItem(Landroid/content/Context;Landroid/database/Cursor;I)Landroid/support/v4/app/Fragment;
    .locals 7
    .parameter "context"
    .parameter "cursor"
    .parameter "position"

    .prologue
    .line 50
    iget v5, p0, Lcom/android/ex/photo/adapters/PhotoPagerAdapter;->mContentUriIndex:I

    #v5=(Integer);
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, photoUri:Ljava/lang/String;
    #v3=(Reference);
    iget v5, p0, Lcom/android/ex/photo/adapters/PhotoPagerAdapter;->mThumbnailUriIndex:I

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 53
    .local v4, thumbnailUri:Ljava/lang/String;
    #v4=(Reference);
    iget v5, p0, Lcom/android/ex/photo/adapters/PhotoPagerAdapter;->mLoadingIndex:I

    const/4 v6, -0x1

    #v6=(Byte);
    if-eq v5, v6, :cond_1

    .line 54
    iget v5, p0, Lcom/android/ex/photo/adapters/PhotoPagerAdapter;->mLoadingIndex:I

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    #v5=(Reference);
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 58
    .local v1, loading:Z
    :goto_0
    #v1=(Boolean);v5=(Conflicted);
    const/4 v2, 0x0

    .line 59
    .local v2, onlyShowSpinner:Z
    #v2=(Null);
    if-nez v3, :cond_0

    if-eqz v1, :cond_0

    .line 60
    const/4 v2, 0x1

    .line 64
    :cond_0
    #v2=(Boolean);
    iget-object v5, p0, Lcom/android/ex/photo/adapters/BaseCursorPagerAdapter;->mContext:Landroid/content/Context;

    #v5=(Reference);
    invoke-static {v5}, Lcom/android/ex/photo/Intents;->newPhotoViewFragmentIntentBuilder(Landroid/content/Context;)Lcom/android/ex/photo/Intents$PhotoViewIntentBuilder;

    move-result-object v0

    .line 66
    .local v0, builder:Lcom/android/ex/photo/Intents$PhotoViewIntentBuilder;
    #v0=(Reference);
    invoke-virtual {v0, v3}, Lcom/android/ex/photo/Intents$PhotoViewIntentBuilder;->setResolvedPhotoUri(Ljava/lang/String;)Lcom/android/ex/photo/Intents$PhotoViewIntentBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/ex/photo/Intents$PhotoViewIntentBuilder;->setThumbnailUri(Ljava/lang/String;)Lcom/android/ex/photo/Intents$PhotoViewIntentBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/ex/photo/adapters/PhotoPagerAdapter;->mDisplayThumbsFullScreen:Z

    #v6=(Boolean);
    invoke-virtual {v5, v6}, Lcom/android/ex/photo/Intents$PhotoViewIntentBuilder;->setDisplayThumbsFullScreen(Z)Lcom/android/ex/photo/Intents$PhotoViewIntentBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/ex/photo/adapters/PhotoPagerAdapter;->mMaxScale:F

    #v6=(Integer);
    invoke-virtual {v5, v6}, Lcom/android/ex/photo/Intents$PhotoViewIntentBuilder;->setMaxInitialScale(F)Lcom/android/ex/photo/Intents$PhotoViewIntentBuilder;

    .line 72
    invoke-virtual {v0}, Lcom/android/ex/photo/Intents$PhotoViewIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v5

    invoke-static {v5, p3, v2}, Lcom/android/ex/photo/fragments/PhotoViewFragment;->newInstance(Landroid/content/Intent;IZ)Lcom/android/ex/photo/fragments/PhotoViewFragment;

    move-result-object v5

    return-object v5

    .line 56
    .end local v0           #builder:Lcom/android/ex/photo/Intents$PhotoViewIntentBuilder;
    .end local v1           #loading:Z
    .end local v2           #onlyShowSpinner:Z
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v5=(Integer);v6=(Byte);
    const/4 v1, 0x0

    .restart local v1       #loading:Z
    #v1=(Null);
    goto :goto_0
.end method

.method public getPhotoUri(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/ex/photo/adapters/PhotoPagerAdapter;->mContentUriIndex:I

    #v0=(Integer);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public getThumbnailUri(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 98
    iget v0, p0, Lcom/android/ex/photo/adapters/PhotoPagerAdapter;->mThumbnailUriIndex:I

    #v0=(Integer);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1
    .parameter "newCursor"

    .prologue
    const/4 v0, -0x1

    .line 77
    #v0=(Byte);
    if-eqz p1, :cond_0

    .line 78
    const-string v0, "contentUri"

    #v0=(Reference);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/ex/photo/adapters/PhotoPagerAdapter;->mContentUriIndex:I

    .line 80
    const-string v0, "thumbnailUri"

    #v0=(Reference);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/ex/photo/adapters/PhotoPagerAdapter;->mThumbnailUriIndex:I

    .line 82
    const-string v0, "loadingIndicator"

    #v0=(Reference);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/ex/photo/adapters/PhotoPagerAdapter;->mLoadingIndex:I

    .line 90
    :goto_0
    invoke-super {p0, p1}, Lcom/android/ex/photo/adapters/BaseCursorPagerAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    #v0=(Reference);
    return-object v0

    .line 85
    :cond_0
    #v0=(Byte);
    iput v0, p0, Lcom/android/ex/photo/adapters/PhotoPagerAdapter;->mContentUriIndex:I

    .line 86
    iput v0, p0, Lcom/android/ex/photo/adapters/PhotoPagerAdapter;->mThumbnailUriIndex:I

    .line 87
    iput v0, p0, Lcom/android/ex/photo/adapters/PhotoPagerAdapter;->mLoadingIndex:I

    goto :goto_0
.end method
