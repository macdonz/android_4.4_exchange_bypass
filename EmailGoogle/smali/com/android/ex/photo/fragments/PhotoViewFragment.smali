.class public Lcom/android/ex/photo/fragments/PhotoViewFragment;
.super Landroid/support/v4/app/Fragment;
.source "PhotoViewFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/ex/photo/PhotoViewCallbacks$CursorChangedListener;
.implements Lcom/android/ex/photo/PhotoViewCallbacks$OnScreenListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/photo/fragments/PhotoViewFragment$1;,
        Lcom/android/ex/photo/fragments/PhotoViewFragment$InternetStateBroadcastReceiver;,
        Lcom/android/ex/photo/fragments/PhotoViewFragment$HorizontallyScrollable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/Fragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/android/ex/photo/PhotoViewCallbacks$OnScreenListener;",
        "Lcom/android/ex/photo/PhotoViewCallbacks$CursorChangedListener;"
    }
.end annotation


# static fields
.field public static sPhotoSize:Ljava/lang/Integer;


# instance fields
.field protected mAdapter:Lcom/android/ex/photo/adapters/PhotoPagerAdapter;

.field protected mCallback:Lcom/android/ex/photo/PhotoViewCallbacks;

.field protected mConnected:Z

.field protected mDisplayThumbsFullScreen:Z

.field protected mEmptyText:Landroid/widget/TextView;

.field protected mFullScreen:Z

.field protected mIntent:Landroid/content/Intent;

.field protected mInternetStateReceiver:Landroid/content/BroadcastReceiver;

.field protected mOnlyShowSpinner:Z

.field protected mPhotoPreviewAndProgress:Landroid/view/View;

.field protected mPhotoPreviewImage:Landroid/widget/ImageView;

.field protected mPhotoProgressBar:Lcom/android/ex/photo/views/ProgressBarWrapper;

.field protected mPhotoView:Lcom/android/ex/photo/views/PhotoView;

.field protected mPosition:I

.field protected mProgressBarNeeded:Z

.field protected mResolvedPhotoUri:Ljava/lang/String;

.field protected mRetryButton:Landroid/widget/ImageView;

.field protected mThumbnailShown:Z

.field protected mThumbnailUri:Ljava/lang/String;

.field protected mWatchNetworkState:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 140
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 128
    #p0=(Reference);
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mProgressBarNeeded:Z

    .line 142
    return-void
.end method

.method private bindPhoto(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 426
    if-eqz p1, :cond_1

    .line 427
    iget-object v0, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mPhotoView:Lcom/android/ex/photo/views/PhotoView;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mPhotoView:Lcom/android/ex/photo/views/PhotoView;

    invoke-virtual {v0, p1}, Lcom/android/ex/photo/views/PhotoView;->bindPhoto(Landroid/graphics/Bitmap;)V

    .line 430
    :cond_0
    const/4 v0, 0x1

    #v0=(One);
    invoke-virtual {p0, v0}, Lcom/android/ex/photo/fragments/PhotoViewFragment;->enableImageTransforms(Z)V

    .line 431
    iget-object v0, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mPhotoPreviewAndProgress:Landroid/view/View;

    #v0=(Reference);
    const/16 v1, 0x8

    #v1=(PosByte);
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 432
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mProgressBarNeeded:Z

    .line 434
    :cond_1
    #v0=(Conflicted);v1=(Conflicted);
    return-void
.end method

.method private displayPhoto(Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;)V
    .locals 4
    .parameter "result"

    .prologue
    const/4 v2, 0x1

    #v2=(One);
    const/4 v3, 0x0

    .line 410
    #v3=(Null);
    iget-object v0, p1, Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;->bitmap:Landroid/graphics/Bitmap;

    .line 411
    .local v0, data:Landroid/graphics/Bitmap;
    #v0=(Reference);
    iget v1, p1, Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;->status:I

    #v1=(Integer);
    if-ne v1, v2, :cond_0

    .line 412
    iput-boolean v3, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mProgressBarNeeded:Z

    .line 413
    iget-object v1, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mEmptyText:Landroid/widget/TextView;

    #v1=(Reference);
    sget v2, Lcom/android/ex/photo/R$string;->failed:I

    #v2=(Integer);
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 414
    iget-object v1, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 415
    iget-object v1, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mCallback:Lcom/android/ex/photo/PhotoViewCallbacks;

    invoke-interface {v1, p0, v3}, Lcom/android/ex/photo/PhotoViewCallbacks;->onFragmentPhotoLoadComplete(Lcom/android/ex/photo/fragments/PhotoViewFragment;Z)V

    .line 420
    :goto_0
    return-void

    .line 417
    :cond_0
    #v1=(Integer);v2=(One);
    invoke-direct {p0, v0}, Lcom/android/ex/photo/fragments/PhotoViewFragment;->bindPhoto(Landroid/graphics/Bitmap;)V

    .line 418
    iget-object v1, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mCallback:Lcom/android/ex/photo/PhotoViewCallbacks;

    #v1=(Reference);
    invoke-interface {v1, p0, v2}, Lcom/android/ex/photo/PhotoViewCallbacks;->onFragmentPhotoLoadComplete(Lcom/android/ex/photo/fragments/PhotoViewFragment;Z)V

    goto :goto_0
.end method

.method public static newInstance(Landroid/content/Intent;IZ)Lcom/android/ex/photo/fragments/PhotoViewFragment;
    .locals 3
    .parameter "intent"
    .parameter "position"
    .parameter "onlyShowSpinner"

    .prologue
    .line 152
    new-instance v0, Landroid/os/Bundle;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 153
    .local v0, b:Landroid/os/Bundle;
    #v0=(Reference);
    const-string v2, "arg-intent"

    #v2=(Reference);
    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 154
    const-string v2, "arg-position"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 155
    const-string v2, "arg-show-spinner"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 156
    new-instance v1, Lcom/android/ex/photo/fragments/PhotoViewFragment;

    #v1=(UninitRef);
    invoke-direct {v1}, Lcom/android/ex/photo/fragments/PhotoViewFragment;-><init>()V

    .line 157
    .local v1, f:Lcom/android/ex/photo/fragments/PhotoViewFragment;
    #v1=(Reference);
    invoke-virtual {v1, v0}, Lcom/android/ex/photo/fragments/PhotoViewFragment;->setArguments(Landroid/os/Bundle;)V

    .line 158
    return-object v1
.end method

.method private resetPhotoView()V
    .locals 2

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mPhotoView:Lcom/android/ex/photo/views/PhotoView;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mPhotoView:Lcom/android/ex/photo/views/PhotoView;

    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, v1}, Lcom/android/ex/photo/views/PhotoView;->bindPhoto(Landroid/graphics/Bitmap;)V

    .line 451
    :cond_0
    #v1=(Conflicted);
    return-void
.end method

.method private setViewVisibility()V
    .locals 2

    .prologue
    .line 523
    iget-object v1, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mCallback:Lcom/android/ex/photo/PhotoViewCallbacks;

    #v1=(Reference);
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 524
    .local v0, fullScreen:Z
    :goto_0
    #v0=(Boolean);
    invoke-virtual {p0, v0}, Lcom/android/ex/photo/fragments/PhotoViewFragment;->setFullScreen(Z)V

    .line 525
    return-void

    .line 523
    .end local v0           #fullScreen:Z
    :cond_0
    #v0=(Uninit);
    iget-object v1, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mCallback:Lcom/android/ex/photo/PhotoViewCallbacks;

    invoke-interface {v1, p0}, Lcom/android/ex/photo/PhotoViewCallbacks;->isFragmentFullScreen(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    #v0=(Boolean);
    goto :goto_0
.end method


# virtual methods
.method public enableImageTransforms(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mPhotoView:Lcom/android/ex/photo/views/PhotoView;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Lcom/android/ex/photo/views/PhotoView;->enableImageTransforms(Z)V

    .line 442
    return-void
.end method

.method public getEmptyText()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mEmptyText:Landroid/widget/TextView;

    #v0=(Reference);
    return-object v0
.end method

.method public getPhotoProgressBar()Lcom/android/ex/photo/views/ProgressBarWrapper;
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mPhotoProgressBar:Lcom/android/ex/photo/views/ProgressBarWrapper;

    #v0=(Reference);
    return-object v0
.end method

.method public getPhotoUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mResolvedPhotoUri:Ljava/lang/String;

    #v0=(Reference);
    return-object v0
.end method

.method public getRetryButton()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mRetryButton:Landroid/widget/ImageView;

    #v0=(Reference);
    return-object v0
.end method

.method protected initializeView(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/4 v6, 0x0

    .line 242
    #v6=(Null);
    sget v2, Lcom/android/ex/photo/R$id;->photo_view:I

    #v2=(Integer);
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Lcom/android/ex/photo/views/PhotoView;

    iput-object v2, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mPhotoView:Lcom/android/ex/photo/views/PhotoView;

    .line 243
    iget-object v2, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mPhotoView:Lcom/android/ex/photo/views/PhotoView;

    iget-object v3, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mIntent:Landroid/content/Intent;

    #v3=(Reference);
    const-string v4, "max_scale"

    #v4=(Reference);
    const/high16 v5, 0x3f80

    #v5=(Integer);
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v3

    #v3=(Float);
    invoke-virtual {v2, v3}, Lcom/android/ex/photo/views/PhotoView;->setMaxInitialScale(F)V

    .line 244
    iget-object v2, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mPhotoView:Lcom/android/ex/photo/views/PhotoView;

    invoke-virtual {v2, p0}, Lcom/android/ex/photo/views/PhotoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    iget-object v2, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mPhotoView:Lcom/android/ex/photo/views/PhotoView;

    iget-boolean v3, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mFullScreen:Z

    #v3=(Boolean);
    invoke-virtual {v2, v3, v6}, Lcom/android/ex/photo/views/PhotoView;->setFullScreen(ZZ)V

    .line 246
    iget-object v2, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mPhotoView:Lcom/android/ex/photo/views/PhotoView;

    invoke-virtual {v2, v6}, Lcom/android/ex/photo/views/PhotoView;->enableImageTransforms(Z)V

    .line 248
    sget v2, Lcom/android/ex/photo/R$id;->photo_preview:I

    #v2=(Integer);
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    #v2=(Reference);
    iput-object v2, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mPhotoPreviewAndProgress:Landroid/view/View;

    .line 249
    sget v2, Lcom/android/ex/photo/R$id;->photo_preview_image:I

    #v2=(Integer);
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mPhotoPreviewImage:Landroid/widget/ImageView;

    .line 250
    iput-boolean v6, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mThumbnailShown:Z

    .line 251
    sget v2, Lcom/android/ex/photo/R$id;->indeterminate_progress:I

    #v2=(Integer);
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Landroid/widget/ProgressBar;

    .line 253
    .local v1, indeterminate:Landroid/widget/ProgressBar;
    sget v2, Lcom/android/ex/photo/R$id;->determinate_progress:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/ProgressBar;

    .line 255
    .local v0, determinate:Landroid/widget/ProgressBar;
    new-instance v2, Lcom/android/ex/photo/views/ProgressBarWrapper;

    #v2=(UninitRef);
    const/4 v3, 0x1

    #v3=(One);
    invoke-direct {v2, v0, v1, v3}, Lcom/android/ex/photo/views/ProgressBarWrapper;-><init>(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;Z)V

    #v2=(Reference);
    iput-object v2, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mPhotoProgressBar:Lcom/android/ex/photo/views/ProgressBarWrapper;

    .line 256
    sget v2, Lcom/android/ex/photo/R$id;->empty_text:I

    #v2=(Integer);
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mEmptyText:Landroid/widget/TextView;

    .line 257
    sget v2, Lcom/android/ex/photo/R$id;->retry_button:I

    #v2=(Integer);
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mRetryButton:Landroid/widget/ImageView;

    .line 260
    invoke-direct {p0}, Lcom/android/ex/photo/fragments/PhotoViewFragment;->setViewVisibility()V

    .line 261
    return-void
.end method

.method public isPhotoBound()Z
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mPhotoView:Lcom/android/ex/photo/views/PhotoView;

    #v0=(Reference);
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mPhotoView:Lcom/android/ex/photo/views/PhotoView;

    invoke-virtual {v0}, Lcom/android/ex/photo/views/PhotoView;->isPhotoBound()Z

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

.method public isProgressBarNeeded()Z
    .locals 1

    .prologue
    .line 590
    iget-boolean v0, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mProgressBarNeeded:Z

    #v0=(Boolean);
    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 163
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 164
    invoke-virtual {p0}, Lcom/android/ex/photo/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/ex/photo/PhotoViewCallbacks;

    iput-object v0, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mCallback:Lcom/android/ex/photo/PhotoViewCallbacks;

    .line 165
    iget-object v0, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mCallback:Lcom/android/ex/photo/PhotoViewCallbacks;

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #v0=(UninitRef);
    const-string v1, "Activity must be a derived class of PhotoViewActivity"

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    throw v0

    .line 169
    :cond_0
    #v1=(Uninit);
    iget-object v0, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mCallback:Lcom/android/ex/photo/PhotoViewCallbacks;

    invoke-interface {v0}, Lcom/android/ex/photo/PhotoViewCallbacks;->getAdapter()Lcom/android/ex/photo/adapters/PhotoPagerAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mAdapter:Lcom/android/ex/photo/adapters/PhotoPagerAdapter;

    .line 170
    iget-object v0, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mAdapter:Lcom/android/ex/photo/adapters/PhotoPagerAdapter;

    if-nez v0, :cond_1

    .line 171
    new-instance v0, Ljava/lang/IllegalStateException;

    #v0=(UninitRef);
    const-string v1, "Callback reported null adapter"

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    throw v0

    .line 174
    :cond_1
    #v1=(Uninit);
    invoke-direct {p0}, Lcom/android/ex/photo/fragments/PhotoViewFragment;->setViewVisibility()V

    .line 175
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mCallback:Lcom/android/ex/photo/PhotoViewCallbacks;

    #v0=(Reference);
    invoke-interface {v0}, Lcom/android/ex/photo/PhotoViewCallbacks;->toggleFullScreen()V

    .line 461
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    .line 185
    #v7=(Null);
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 186
    sget-object v5, Lcom/android/ex/photo/fragments/PhotoViewFragment;->sPhotoSize:Ljava/lang/Integer;

    #v5=(Reference);
    if-nez v5, :cond_0

    .line 187
    new-instance v2, Landroid/util/DisplayMetrics;

    #v2=(UninitRef);
    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 188
    .local v2, metrics:Landroid/util/DisplayMetrics;
    #v2=(Reference);
    invoke-virtual {p0}, Lcom/android/ex/photo/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-string v6, "window"

    #v6=(Reference);
    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    #v4=(Reference);
    check-cast v4, Landroid/view/WindowManager;

    .line 190
    .local v4, wm:Landroid/view/WindowManager;
    sget-object v1, Lcom/android/ex/photo/util/ImageUtils;->sUseImageSize:Lcom/android/ex/photo/util/ImageUtils$ImageSize;

    .line 191
    .local v1, imageSize:Lcom/android/ex/photo/util/ImageUtils$ImageSize;
    #v1=(Reference);
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 192
    sget-object v5, Lcom/android/ex/photo/fragments/PhotoViewFragment$1;->$SwitchMap$com$android$ex$photo$util$ImageUtils$ImageSize:[I

    invoke-virtual {v1}, Lcom/android/ex/photo/util/ImageUtils$ImageSize;->ordinal()I

    move-result v6

    #v6=(Integer);
    aget v5, v5, v6

    #v5=(Integer);
    packed-switch v5, :pswitch_data_0

    .line 202
    iget v5, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v6, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #v5=(Reference);
    sput-object v5, Lcom/android/ex/photo/fragments/PhotoViewFragment;->sPhotoSize:Ljava/lang/Integer;

    .line 207
    .end local v1           #imageSize:Lcom/android/ex/photo/util/ImageUtils$ImageSize;
    .end local v2           #metrics:Landroid/util/DisplayMetrics;
    .end local v4           #wm:Landroid/view/WindowManager;
    :cond_0
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);v6=(Conflicted);
    invoke-virtual {p0}, Lcom/android/ex/photo/fragments/PhotoViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 208
    .local v0, bundle:Landroid/os/Bundle;
    #v0=(Reference);
    if-nez v0, :cond_2

    .line 231
    :cond_1
    :goto_1
    #v3=(Conflicted);v5=(Conflicted);
    return-void

    .line 195
    .end local v0           #bundle:Landroid/os/Bundle;
    .restart local v1       #imageSize:Lcom/android/ex/photo/util/ImageUtils$ImageSize;
    .restart local v2       #metrics:Landroid/util/DisplayMetrics;
    .restart local v4       #wm:Landroid/view/WindowManager;
    :pswitch_0
    #v0=(Uninit);v1=(Reference);v2=(Reference);v3=(Uninit);v4=(Reference);v5=(Integer);v6=(Integer);
    iget v5, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v6, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    mul-int/lit16 v5, v5, 0x320

    div-int/lit16 v5, v5, 0x3e8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #v5=(Reference);
    sput-object v5, Lcom/android/ex/photo/fragments/PhotoViewFragment;->sPhotoSize:Ljava/lang/Integer;

    goto :goto_0

    .line 211
    .end local v1           #imageSize:Lcom/android/ex/photo/util/ImageUtils$ImageSize;
    .end local v2           #metrics:Landroid/util/DisplayMetrics;
    .end local v4           #wm:Landroid/view/WindowManager;
    .restart local v0       #bundle:Landroid/os/Bundle;
    :cond_2
    #v0=(Reference);v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);v6=(Conflicted);
    const-string v5, "arg-intent"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    iput-object v5, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mIntent:Landroid/content/Intent;

    .line 212
    iget-object v5, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mIntent:Landroid/content/Intent;

    const-string v6, "display_thumbs_fullscreen"

    #v6=(Reference);
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    #v5=(Boolean);
    iput-boolean v5, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mDisplayThumbsFullScreen:Z

    .line 215
    const-string v5, "arg-position"

    #v5=(Reference);
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    #v5=(Integer);
    iput v5, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mPosition:I

    .line 216
    const-string v5, "arg-show-spinner"

    #v5=(Reference);
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    #v5=(Boolean);
    iput-boolean v5, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mOnlyShowSpinner:Z

    .line 217
    const/4 v5, 0x1

    #v5=(One);
    iput-boolean v5, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mProgressBarNeeded:Z

    .line 219
    if-eqz p1, :cond_3

    .line 220
    const-string v5, "com.android.mail.photo.fragments.PhotoViewFragment.INTENT"

    #v5=(Reference);
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 221
    .local v3, state:Landroid/os/Bundle;
    #v3=(Reference);
    if-eqz v3, :cond_3

    .line 222
    new-instance v5, Landroid/content/Intent;

    #v5=(UninitRef);
    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    #v5=(Reference);
    invoke-virtual {v5, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v5

    iput-object v5, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mIntent:Landroid/content/Intent;

    .line 226
    .end local v3           #state:Landroid/os/Bundle;
    :cond_3
    #v3=(Conflicted);v5=(Conflicted);
    iget-object v5, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mIntent:Landroid/content/Intent;

    #v5=(Reference);
    if-eqz v5, :cond_1

    .line 227
    iget-object v5, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mIntent:Landroid/content/Intent;

    const-string v6, "resolved_photo_uri"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mResolvedPhotoUri:Ljava/lang/String;

    .line 228
    iget-object v5, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mIntent:Landroid/content/Intent;

    const-string v6, "thumbnail_uri"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mThumbnailUri:Ljava/lang/String;

    .line 229
    iget-object v5, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mIntent:Landroid/content/Intent;

    const-string v6, "watch_network"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    #v5=(Boolean);
    iput-boolean v5, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mWatchNetworkState:Z

    goto :goto_1

    .line 192
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 2
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 339
    iget-boolean v1, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mOnlyShowSpinner:Z

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 340
    const/4 v1, 0x0

    .line 351
    :goto_0
    #v0=(Conflicted);v1=(Reference);
    return-object v1

    .line 342
    :cond_0
    #v0=(Uninit);v1=(Boolean);
    const/4 v0, 0x0

    .line 343
    .local v0, uri:Ljava/lang/String;
    #v0=(Null);
    packed-switch p1, :pswitch_data_0

    .line 351
    :goto_1
    #v0=(Reference);
    iget-object v1, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mCallback:Lcom/android/ex/photo/PhotoViewCallbacks;

    #v1=(Reference);
    invoke-interface {v1, p1, p2, v0}, Lcom/android/ex/photo/PhotoViewCallbacks;->onCreateBitmapLoader(ILandroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/content/Loader;

    move-result-object v1

    goto :goto_0

    .line 345
    :pswitch_0
    #v0=(Null);v1=(Boolean);
    iget-object v0, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mThumbnailUri:Ljava/lang/String;

    .line 346
    #v0=(Reference);
    goto :goto_1

    .line 348
    :pswitch_1
    #v0=(Null);
    iget-object v0, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mResolvedPhotoUri:Ljava/lang/String;

    #v0=(Reference);
    goto :goto_1

    .line 343
    #v0=(Unknown);v1=(Unknown);p0=(Unknown);p1=(Unknown);p2=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 236
    sget v1, Lcom/android/ex/photo/R$layout;->photo_fragment_view:I

    #v1=(Integer);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 237
    .local v0, view:Landroid/view/View;
    #v0=(Reference);
    invoke-virtual {p0, v0}, Lcom/android/ex/photo/fragments/PhotoViewFragment;->initializeView(Landroid/view/View;)V

    .line 238
    return-object v0
.end method

.method public onCursorChanged(Landroid/database/Cursor;)V
    .locals 5
    .parameter "cursor"

    .prologue
    .line 536
    iget-object v4, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mAdapter:Lcom/android/ex/photo/adapters/PhotoPagerAdapter;

    #v4=(Reference);
    if-nez v4, :cond_1

    .line 571
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return-void

    .line 546
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Reference);
    iget v4, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mPosition:I

    #v4=(Integer);
    invoke-interface {p1, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/ex/photo/fragments/PhotoViewFragment;->isPhotoBound()Z

    move-result v4

    if-nez v4, :cond_0

    .line 547
    iget-object v4, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mCallback:Lcom/android/ex/photo/PhotoViewCallbacks;

    #v4=(Reference);
    invoke-interface {v4, p0, p1}, Lcom/android/ex/photo/PhotoViewCallbacks;->onCursorChanged(Lcom/android/ex/photo/fragments/PhotoViewFragment;Landroid/database/Cursor;)V

    .line 549
    invoke-virtual {p0}, Lcom/android/ex/photo/fragments/PhotoViewFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v3

    .line 551
    .local v3, manager:Landroid/support/v4/app/LoaderManager;
    #v3=(Reference);
    const/4 v4, 0x3

    #v4=(PosByte);
    invoke-virtual {v3, v4}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/Loader;

    move-result-object v0

    .line 553
    .local v0, fakePhotoLoader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;>;"
    #v0=(Reference);
    if-eqz v0, :cond_2

    move-object v2, v0

    .line 554
    #v2=(Reference);
    check-cast v2, Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface;

    .line 555
    .local v2, loader:Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface;
    iget-object v4, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mAdapter:Lcom/android/ex/photo/adapters/PhotoPagerAdapter;

    #v4=(Reference);
    invoke-virtual {v4, p1}, Lcom/android/ex/photo/adapters/PhotoPagerAdapter;->getPhotoUri(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mResolvedPhotoUri:Ljava/lang/String;

    .line 556
    iget-object v4, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mResolvedPhotoUri:Ljava/lang/String;

    invoke-interface {v2, v4}, Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface;->setPhotoUri(Ljava/lang/String;)V

    .line 557
    invoke-interface {v2}, Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface;->forceLoad()V

    .line 560
    .end local v2           #loader:Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface;
    :cond_2
    #v2=(Conflicted);v4=(Conflicted);
    iget-boolean v4, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mThumbnailShown:Z

    #v4=(Boolean);
    if-nez v4, :cond_0

    .line 561
    const/4 v4, 0x2

    #v4=(PosByte);
    invoke-virtual {v3, v4}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/Loader;

    move-result-object v1

    .line 563
    .local v1, fakeThumbnailLoader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;>;"
    #v1=(Reference);
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 564
    #v2=(Reference);
    check-cast v2, Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface;

    .line 565
    .restart local v2       #loader:Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface;
    iget-object v4, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mAdapter:Lcom/android/ex/photo/adapters/PhotoPagerAdapter;

    #v4=(Reference);
    invoke-virtual {v4, p1}, Lcom/android/ex/photo/adapters/PhotoPagerAdapter;->getThumbnailUri(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mThumbnailUri:Ljava/lang/String;

    .line 566
    iget-object v4, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mThumbnailUri:Ljava/lang/String;

    invoke-interface {v2, v4}, Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface;->setPhotoUri(Ljava/lang/String;)V

    .line 567
    invoke-interface {v2}, Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface;->forceLoad()V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mPhotoView:Lcom/android/ex/photo/views/PhotoView;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mPhotoView:Lcom/android/ex/photo/views/PhotoView;

    invoke-virtual {v0}, Lcom/android/ex/photo/views/PhotoView;->clear()V

    .line 319
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mPhotoView:Lcom/android/ex/photo/views/PhotoView;

    .line 321
    :cond_0
    #v0=(Reference);
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 322
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mCallback:Lcom/android/ex/photo/PhotoViewCallbacks;

    .line 180
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 181
    return-void
.end method

.method public onFullScreenChanged(Z)V
    .locals 0
    .parameter "fullScreen"

    .prologue
    .line 465
    invoke-direct {p0}, Lcom/android/ex/photo/fragments/PhotoViewFragment;->setViewVisibility()V

    .line 466
    return-void
.end method

.method public onInterceptMoveLeft(FF)Z
    .locals 2
    .parameter "origX"
    .parameter "origY"

    .prologue
    const/4 v0, 0x0

    .line 494
    #v0=(Null);
    iget-object v1, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mCallback:Lcom/android/ex/photo/PhotoViewCallbacks;

    #v1=(Reference);
    invoke-interface {v1, p0}, Lcom/android/ex/photo/PhotoViewCallbacks;->isFragmentActive(Landroid/support/v4/app/Fragment;)Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_1

    .line 499
    :cond_0
    :goto_0
    #v0=(Boolean);v1=(Conflicted);
    return v0

    :cond_1
    #v0=(Null);v1=(Boolean);
    iget-object v1, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mPhotoView:Lcom/android/ex/photo/views/PhotoView;

    #v1=(Reference);
    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mPhotoView:Lcom/android/ex/photo/views/PhotoView;

    invoke-virtual {v1, p1, p2}, Lcom/android/ex/photo/views/PhotoView;->interceptMoveLeft(FF)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    #v0=(One);
    goto :goto_0
.end method

.method public onInterceptMoveRight(FF)Z
    .locals 2
    .parameter "origX"
    .parameter "origY"

    .prologue
    const/4 v0, 0x0

    .line 504
    #v0=(Null);
    iget-object v1, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mCallback:Lcom/android/ex/photo/PhotoViewCallbacks;

    #v1=(Reference);
    invoke-interface {v1, p0}, Lcom/android/ex/photo/PhotoViewCallbacks;->isFragmentActive(Landroid/support/v4/app/Fragment;)Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_1

    .line 509
    :cond_0
    :goto_0
    #v0=(Boolean);v1=(Conflicted);
    return v0

    :cond_1
    #v0=(Null);v1=(Boolean);
    iget-object v1, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mPhotoView:Lcom/android/ex/photo/views/PhotoView;

    #v1=(Reference);
    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mPhotoView:Lcom/android/ex/photo/views/PhotoView;

    invoke-virtual {v1, p1, p2}, Lcom/android/ex/photo/views/PhotoView;->interceptMoveRight(FF)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    #v0=(One);
    goto :goto_0
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;)V
    .locals 5
    .parameter
    .parameter "result"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;",
            ">;",
            "Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;>;"
    const/4 v4, 0x0

    .line 356
    #v4=(Null);
    iget-object v0, p2, Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;->bitmap:Landroid/graphics/Bitmap;

    .line 358
    .local v0, data:Landroid/graphics/Bitmap;
    #v0=(Reference);
    invoke-virtual {p0}, Lcom/android/ex/photo/fragments/PhotoViewFragment;->getView()Landroid/view/View;

    move-result-object v2

    #v2=(Reference);
    if-nez v2, :cond_1

    .line 407
    :cond_0
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-void

    .line 362
    :cond_1
    #v1=(Uninit);v2=(Reference);v3=(Uninit);
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v1

    .line 363
    .local v1, id:I
    #v1=(Integer);
    packed-switch v1, :pswitch_data_0

    .line 398
    :goto_1
    #v2=(Conflicted);v3=(Conflicted);
    iget-boolean v2, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mProgressBarNeeded:Z

    #v2=(Boolean);
    if-nez v2, :cond_2

    .line 400
    iget-object v2, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mPhotoProgressBar:Lcom/android/ex/photo/views/ProgressBarWrapper;

    #v2=(Reference);
    const/16 v3, 0x8

    #v3=(PosByte);
    invoke-virtual {v2, v3}, Lcom/android/ex/photo/views/ProgressBarWrapper;->setVisibility(I)V

    .line 403
    :cond_2
    #v2=(Conflicted);v3=(Conflicted);
    if-eqz v0, :cond_3

    .line 404
    iget-object v2, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mCallback:Lcom/android/ex/photo/PhotoViewCallbacks;

    #v2=(Reference);
    iget v3, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mPosition:I

    #v3=(Integer);
    invoke-interface {v2, v3}, Lcom/android/ex/photo/PhotoViewCallbacks;->onNewPhotoLoaded(I)V

    .line 406
    :cond_3
    #v2=(Conflicted);v3=(Conflicted);
    invoke-direct {p0}, Lcom/android/ex/photo/fragments/PhotoViewFragment;->setViewVisibility()V

    goto :goto_0

    .line 365
    :pswitch_0
    #v2=(Reference);v3=(Uninit);
    iget-boolean v2, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mDisplayThumbsFullScreen:Z

    #v2=(Boolean);
    if-eqz v2, :cond_4

    .line 366
    invoke-direct {p0, p2}, Lcom/android/ex/photo/fragments/PhotoViewFragment;->displayPhoto(Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;)V

    goto :goto_1

    .line 368
    :cond_4
    invoke-virtual {p0}, Lcom/android/ex/photo/fragments/PhotoViewFragment;->isPhotoBound()Z

    move-result v2

    if-nez v2, :cond_0

    .line 374
    if-nez v0, :cond_6

    .line 376
    iget-object v2, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mPhotoPreviewImage:Landroid/widget/ImageView;

    #v2=(Reference);
    sget v3, Lcom/android/ex/photo/R$drawable;->default_image:I

    #v3=(Integer);
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 377
    iput-boolean v4, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mThumbnailShown:Z

    .line 383
    :goto_2
    #v2=(Conflicted);v3=(Conflicted);
    iget-object v2, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mPhotoPreviewImage:Landroid/widget/ImageView;

    #v2=(Reference);
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 384
    invoke-virtual {p0}, Lcom/android/ex/photo/fragments/PhotoViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/ex/photo/R$bool;->force_thumbnail_no_scaling:I

    #v3=(Integer);
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_5

    .line 385
    iget-object v2, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mPhotoPreviewImage:Landroid/widget/ImageView;

    #v2=(Reference);
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    #v3=(Reference);
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 387
    :cond_5
    #v2=(Conflicted);v3=(Conflicted);
    invoke-virtual {p0, v4}, Lcom/android/ex/photo/fragments/PhotoViewFragment;->enableImageTransforms(Z)V

    goto :goto_1

    .line 380
    :cond_6
    #v2=(Boolean);v3=(Uninit);
    iget-object v2, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mPhotoPreviewImage:Landroid/widget/ImageView;

    #v2=(Reference);
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 381
    const/4 v2, 0x1

    #v2=(One);
    iput-boolean v2, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mThumbnailShown:Z

    goto :goto_2

    .line 392
    :pswitch_1
    #v2=(Reference);
    invoke-direct {p0, p2}, Lcom/android/ex/photo/fragments/PhotoViewFragment;->displayPhoto(Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;)V

    goto :goto_1

    .line 363
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);p0=(Unknown);p1=(Unknown);p2=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    check-cast p2, Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/ex/photo/fragments/PhotoViewFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 456
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;>;"
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mWatchNetworkState:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/android/ex/photo/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mInternetStateReceiver:Landroid/content/BroadcastReceiver;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 308
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);
    iget-object v0, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mCallback:Lcom/android/ex/photo/PhotoViewCallbacks;

    #v0=(Reference);
    invoke-interface {v0, p0}, Lcom/android/ex/photo/PhotoViewCallbacks;->removeCursorListener(Lcom/android/ex/photo/PhotoViewCallbacks$CursorChangedListener;)V

    .line 309
    iget-object v0, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mCallback:Lcom/android/ex/photo/PhotoViewCallbacks;

    iget v1, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mPosition:I

    #v1=(Integer);
    invoke-interface {v0, v1}, Lcom/android/ex/photo/PhotoViewCallbacks;->removeScreenListener(I)V

    .line 310
    invoke-direct {p0}, Lcom/android/ex/photo/fragments/PhotoViewFragment;->resetPhotoView()V

    .line 311
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 312
    return-void
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    #v7=(Null);
    const/4 v6, 0x0

    .line 265
    #v6=(Null);
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 266
    iget-object v2, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mCallback:Lcom/android/ex/photo/PhotoViewCallbacks;

    #v2=(Reference);
    iget v3, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mPosition:I

    #v3=(Integer);
    invoke-interface {v2, v3, p0}, Lcom/android/ex/photo/PhotoViewCallbacks;->addScreenListener(ILcom/android/ex/photo/PhotoViewCallbacks$OnScreenListener;)V

    .line 267
    iget-object v2, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mCallback:Lcom/android/ex/photo/PhotoViewCallbacks;

    invoke-interface {v2, p0}, Lcom/android/ex/photo/PhotoViewCallbacks;->addCursorListener(Lcom/android/ex/photo/PhotoViewCallbacks$CursorChangedListener;)V

    .line 269
    iget-boolean v2, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mWatchNetworkState:Z

    #v2=(Boolean);
    if-eqz v2, :cond_1

    .line 270
    iget-object v2, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mInternetStateReceiver:Landroid/content/BroadcastReceiver;

    #v2=(Reference);
    if-nez v2, :cond_0

    .line 271
    new-instance v2, Lcom/android/ex/photo/fragments/PhotoViewFragment$InternetStateBroadcastReceiver;

    #v2=(UninitRef);
    invoke-direct {v2, p0, v6}, Lcom/android/ex/photo/fragments/PhotoViewFragment$InternetStateBroadcastReceiver;-><init>(Lcom/android/ex/photo/fragments/PhotoViewFragment;Lcom/android/ex/photo/fragments/PhotoViewFragment$1;)V

    #v2=(Reference);
    iput-object v2, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mInternetStateReceiver:Landroid/content/BroadcastReceiver;

    .line 273
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/photo/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mInternetStateReceiver:Landroid/content/BroadcastReceiver;

    #v3=(Reference);
    new-instance v4, Landroid/content/IntentFilter;

    #v4=(UninitRef);
    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    #v5=(Reference);
    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #v4=(Reference);
    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 275
    invoke-virtual {p0}, Lcom/android/ex/photo/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 277
    .local v1, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 278
    .local v0, activeNetInfo:Landroid/net/NetworkInfo;
    #v0=(Reference);
    if-eqz v0, :cond_3

    .line 279
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    #v2=(Boolean);
    iput-boolean v2, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mConnected:Z

    .line 287
    .end local v0           #activeNetInfo:Landroid/net/NetworkInfo;
    .end local v1           #connectivityManager:Landroid/net/ConnectivityManager;
    :cond_1
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    invoke-virtual {p0}, Lcom/android/ex/photo/fragments/PhotoViewFragment;->isPhotoBound()Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_2

    .line 288
    const/4 v2, 0x1

    #v2=(One);
    iput-boolean v2, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mProgressBarNeeded:Z

    .line 289
    iget-object v2, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mPhotoPreviewAndProgress:Landroid/view/View;

    #v2=(Reference);
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 291
    invoke-virtual {p0}, Lcom/android/ex/photo/fragments/PhotoViewFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x2

    #v3=(PosByte);
    invoke-virtual {v2, v3, v6, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 297
    invoke-virtual {p0}, Lcom/android/ex/photo/fragments/PhotoViewFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v6, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 300
    :cond_2
    #v2=(Conflicted);v3=(Conflicted);
    return-void

    .line 283
    .restart local v0       #activeNetInfo:Landroid/net/NetworkInfo;
    .restart local v1       #connectivityManager:Landroid/net/ConnectivityManager;
    :cond_3
    #v0=(Reference);v1=(Reference);v2=(Reference);v3=(Reference);v4=(Reference);v5=(Reference);
    iput-boolean v7, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mConnected:Z

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 330
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 332
    iget-object v0, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mIntent:Landroid/content/Intent;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 333
    const-string v0, "com.android.mail.photo.fragments.PhotoViewFragment.INTENT"

    iget-object v1, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mIntent:Landroid/content/Intent;

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 335
    :cond_0
    #v1=(Conflicted);
    return-void
.end method

.method public onViewActivated()V
    .locals 3

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mCallback:Lcom/android/ex/photo/PhotoViewCallbacks;

    #v0=(Reference);
    invoke-interface {v0, p0}, Lcom/android/ex/photo/PhotoViewCallbacks;->isFragmentActive(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 472
    invoke-virtual {p0}, Lcom/android/ex/photo/fragments/PhotoViewFragment;->resetViews()V

    .line 481
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    return-void

    .line 474
    :cond_0
    #v0=(Boolean);v1=(Uninit);v2=(Uninit);
    invoke-virtual {p0}, Lcom/android/ex/photo/fragments/PhotoViewFragment;->isPhotoBound()Z

    move-result v0

    if-nez v0, :cond_1

    .line 476
    invoke-virtual {p0}, Lcom/android/ex/photo/fragments/PhotoViewFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    #v0=(Reference);
    const/4 v1, 0x2

    #v1=(PosByte);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 479
    :cond_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    iget-object v0, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mCallback:Lcom/android/ex/photo/PhotoViewCallbacks;

    #v0=(Reference);
    invoke-interface {v0, p0}, Lcom/android/ex/photo/PhotoViewCallbacks;->onFragmentVisible(Lcom/android/ex/photo/fragments/PhotoViewFragment;)V

    goto :goto_0
.end method

.method public resetViews()V
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mPhotoView:Lcom/android/ex/photo/views/PhotoView;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mPhotoView:Lcom/android/ex/photo/views/PhotoView;

    invoke-virtual {v0}, Lcom/android/ex/photo/views/PhotoView;->resetTransformations()V

    .line 490
    :cond_0
    return-void
.end method

.method public setFullScreen(Z)V
    .locals 0
    .parameter "fullScreen"

    .prologue
    .line 531
    iput-boolean p1, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mFullScreen:Z

    .line 532
    return-void
.end method
