.class public Lcom/android/ex/photo/loaders/PhotoBitmapLoader;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "PhotoBitmapLoader.java"

# interfaces
.implements Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<",
        "Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;",
        ">;",
        "Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface;"
    }
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mPhotoUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "photoUri"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 41
    #p0=(Reference);
    iput-object p2, p0, Lcom/android/ex/photo/loaders/PhotoBitmapLoader;->mPhotoUri:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public deliverResult(Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 77
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;->bitmap:Landroid/graphics/Bitmap;

    .line 78
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    #v0=(Reference);
    invoke-virtual {p0}, Lcom/android/ex/photo/loaders/PhotoBitmapLoader;->isReset()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_2

    .line 81
    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0, v0}, Lcom/android/ex/photo/loaders/PhotoBitmapLoader;->onReleaseResources(Landroid/graphics/Bitmap;)V

    .line 101
    :cond_0
    :goto_1
    #v1=(Conflicted);
    return-void

    .line 77
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0

    .line 86
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_2
    #v0=(Reference);v2=(Boolean);
    iget-object v1, p0, Lcom/android/ex/photo/loaders/PhotoBitmapLoader;->mBitmap:Landroid/graphics/Bitmap;

    .line 87
    .local v1, oldBitmap:Landroid/graphics/Bitmap;
    #v1=(Reference);
    iput-object v0, p0, Lcom/android/ex/photo/loaders/PhotoBitmapLoader;->mBitmap:Landroid/graphics/Bitmap;

    .line 89
    invoke-virtual {p0}, Lcom/android/ex/photo/loaders/PhotoBitmapLoader;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 92
    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 98
    :cond_3
    if-eqz v1, :cond_0

    if-eq v1, v0, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 99
    invoke-virtual {p0, v1}, Lcom/android/ex/photo/loaders/PhotoBitmapLoader;->onReleaseResources(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    check-cast p1, Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/ex/photo/loaders/PhotoBitmapLoader;->deliverResult(Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;)V

    return-void
.end method

.method public loadInBackground()Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;
    .locals 6

    .prologue
    .line 51
    new-instance v3, Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;

    #v3=(UninitRef);
    invoke-direct {v3}, Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;-><init>()V

    .line 52
    .local v3, result:Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;
    #v3=(Reference);
    invoke-virtual {p0}, Lcom/android/ex/photo/loaders/PhotoBitmapLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 53
    .local v0, context:Landroid/content/Context;
    #v0=(Reference);
    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/android/ex/photo/loaders/PhotoBitmapLoader;->mPhotoUri:Ljava/lang/String;

    #v4=(Reference);
    if-eqz v4, :cond_0

    .line 54
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 56
    .local v2, resolver:Landroid/content/ContentResolver;
    :try_start_0
    #v2=(Reference);
    iget-object v4, p0, Lcom/android/ex/photo/loaders/PhotoBitmapLoader;->mPhotoUri:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/android/ex/photo/fragments/PhotoViewFragment;->sPhotoSize:Ljava/lang/Integer;

    #v5=(Reference);
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    #v5=(Integer);
    invoke-static {v2, v4, v5}, Lcom/android/ex/photo/util/ImageUtils;->createLocalBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;I)Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;

    move-result-object v3

    .line 58
    iget-object v4, v3, Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    .line 59
    iget-object v4, v3, Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;->bitmap:Landroid/graphics/Bitmap;

    const/16 v5, 0xa0

    #v5=(PosShort);
    invoke-virtual {v4, v5}, Landroid/graphics/Bitmap;->setDensity(I)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v2           #resolver:Landroid/content/ContentResolver;
    :cond_0
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return-object v3

    .line 61
    .restart local v2       #resolver:Landroid/content/ContentResolver;
    :catch_0
    #v1=(Uninit);v2=(Reference);v4=(Reference);
    move-exception v1

    .line 63
    .local v1, ex:Ljava/lang/UnsupportedOperationException;
    #v1=(Reference);
    const/4 v4, 0x1

    #v4=(One);
    iput v4, v3, Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;->status:I

    goto :goto_0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/android/ex/photo/loaders/PhotoBitmapLoader;->loadInBackground()Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public onCanceled(Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 137
    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    .line 141
    if-eqz p1, :cond_0

    .line 142
    iget-object v0, p1, Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;->bitmap:Landroid/graphics/Bitmap;

    #v0=(Reference);
    invoke-virtual {p0, v0}, Lcom/android/ex/photo/loaders/PhotoBitmapLoader;->onReleaseResources(Landroid/graphics/Bitmap;)V

    .line 144
    :cond_0
    #v0=(Conflicted);
    return-void
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    check-cast p1, Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/ex/photo/loaders/PhotoBitmapLoader;->onCanceled(Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;)V

    return-void
.end method

.method protected onReleaseResources(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 169
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 170
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 172
    :cond_0
    #v0=(Conflicted);
    return-void
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 151
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onReset()V

    .line 154
    invoke-virtual {p0}, Lcom/android/ex/photo/loaders/PhotoBitmapLoader;->onStopLoading()V

    .line 158
    iget-object v0, p0, Lcom/android/ex/photo/loaders/PhotoBitmapLoader;->mBitmap:Landroid/graphics/Bitmap;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/ex/photo/loaders/PhotoBitmapLoader;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/android/ex/photo/loaders/PhotoBitmapLoader;->onReleaseResources(Landroid/graphics/Bitmap;)V

    .line 160
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/android/ex/photo/loaders/PhotoBitmapLoader;->mBitmap:Landroid/graphics/Bitmap;

    .line 162
    :cond_0
    #v0=(Reference);
    return-void
.end method

.method protected onStartLoading()V
    .locals 2

    .prologue
    .line 108
    iget-object v1, p0, Lcom/android/ex/photo/loaders/PhotoBitmapLoader;->mBitmap:Landroid/graphics/Bitmap;

    #v1=(Reference);
    if-eqz v1, :cond_0

    .line 111
    new-instance v0, Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;-><init>()V

    .line 112
    .local v0, result:Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;
    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    iput v1, v0, Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;->status:I

    .line 113
    iget-object v1, p0, Lcom/android/ex/photo/loaders/PhotoBitmapLoader;->mBitmap:Landroid/graphics/Bitmap;

    #v1=(Reference);
    iput-object v1, v0, Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;->bitmap:Landroid/graphics/Bitmap;

    .line 114
    invoke-virtual {p0, v0}, Lcom/android/ex/photo/loaders/PhotoBitmapLoader;->deliverResult(Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;)V

    .line 117
    .end local v0           #result:Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;
    :cond_0
    #v0=(Conflicted);
    invoke-virtual {p0}, Lcom/android/ex/photo/loaders/PhotoBitmapLoader;->takeContentChanged()Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/ex/photo/loaders/PhotoBitmapLoader;->mBitmap:Landroid/graphics/Bitmap;

    #v1=(Reference);
    if-nez v1, :cond_2

    .line 120
    :cond_1
    #v1=(Conflicted);
    invoke-virtual {p0}, Lcom/android/ex/photo/loaders/PhotoBitmapLoader;->forceLoad()V

    .line 122
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/android/ex/photo/loaders/PhotoBitmapLoader;->cancelLoad()Z

    .line 130
    return-void
.end method

.method public setPhotoUri(Ljava/lang/String;)V
    .locals 0
    .parameter "photoUri"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/ex/photo/loaders/PhotoBitmapLoader;->mPhotoUri:Ljava/lang/String;

    .line 47
    return-void
.end method
