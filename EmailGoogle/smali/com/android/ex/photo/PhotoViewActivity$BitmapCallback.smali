.class Lcom/android/ex/photo/PhotoViewActivity$BitmapCallback;
.super Ljava/lang/Object;
.source "PhotoViewActivity.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/photo/PhotoViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/photo/PhotoViewActivity;


# direct methods
.method private constructor <init>(Lcom/android/ex/photo/PhotoViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1026
    iput-object p1, p0, Lcom/android/ex/photo/PhotoViewActivity$BitmapCallback;->this$0:Lcom/android/ex/photo/PhotoViewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ex/photo/PhotoViewActivity;Lcom/android/ex/photo/PhotoViewActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1026
    invoke-direct {p0, p1}, Lcom/android/ex/photo/PhotoViewActivity$BitmapCallback;-><init>(Lcom/android/ex/photo/PhotoViewActivity;)V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 3
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
    .line 1030
    const-string v1, "image_uri"

    #v1=(Reference);
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1031
    .local v0, uri:Ljava/lang/String;
    #v0=(Reference);
    packed-switch p1, :pswitch_data_0

    .line 1039
    const/4 v1, 0x0

    :goto_0
    #v2=(Conflicted);
    return-object v1

    .line 1033
    :pswitch_0
    #v2=(Uninit);
    iget-object v1, p0, Lcom/android/ex/photo/PhotoViewActivity$BitmapCallback;->this$0:Lcom/android/ex/photo/PhotoViewActivity;

    const/4 v2, 0x2

    #v2=(PosByte);
    invoke-virtual {v1, v2, p2, v0}, Lcom/android/ex/photo/PhotoViewActivity;->onCreateBitmapLoader(ILandroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/content/Loader;

    move-result-object v1

    goto :goto_0

    .line 1036
    :pswitch_1
    #v2=(Uninit);
    iget-object v1, p0, Lcom/android/ex/photo/PhotoViewActivity$BitmapCallback;->this$0:Lcom/android/ex/photo/PhotoViewActivity;

    const/4 v2, 0x1

    #v2=(One);
    invoke-virtual {v1, v2, p2, v0}, Lcom/android/ex/photo/PhotoViewActivity;->onCreateBitmapLoader(ILandroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/content/Loader;

    move-result-object v1

    goto :goto_0

    .line 1031
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);p0=(Unknown);p1=(Unknown);p2=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
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
    .line 1044
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;>;"
    iget-object v1, p2, Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;->bitmap:Landroid/graphics/Bitmap;

    .line 1045
    .local v1, bitmap:Landroid/graphics/Bitmap;
    #v1=(Reference);
    iget-object v3, p0, Lcom/android/ex/photo/PhotoViewActivity$BitmapCallback;->this$0:Lcom/android/ex/photo/PhotoViewActivity;

    #v3=(Reference);
    invoke-virtual {v3}, Lcom/android/ex/photo/PhotoViewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1046
    .local v0, actionBar:Landroid/app/ActionBar;
    #v0=(Reference);
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v3

    #v3=(Integer);
    packed-switch v3, :pswitch_data_0

    .line 1065
    :goto_0
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return-void

    .line 1050
    :pswitch_0
    #v2=(Uninit);v3=(Integer);v4=(Uninit);
    iget-object v3, p0, Lcom/android/ex/photo/PhotoViewActivity$BitmapCallback;->this$0:Lcom/android/ex/photo/PhotoViewActivity;

    #v3=(Reference);
    invoke-static {v3, v1}, Lcom/android/ex/photo/PhotoViewActivity;->access$300(Lcom/android/ex/photo/PhotoViewActivity;Landroid/graphics/Bitmap;)V

    .line 1053
    iget-object v3, p0, Lcom/android/ex/photo/PhotoViewActivity$BitmapCallback;->this$0:Lcom/android/ex/photo/PhotoViewActivity;

    invoke-virtual {v3}, Lcom/android/ex/photo/PhotoViewActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v3

    const/4 v4, 0x2

    #v4=(PosByte);
    invoke-virtual {v3, v4}, Landroid/support/v4/app/LoaderManager;->destroyLoader(I)V

    goto :goto_0

    .line 1057
    :pswitch_1
    #v3=(Integer);v4=(Uninit);
    if-nez v1, :cond_0

    .line 1058
    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1060
    :cond_0
    #v3=(Integer);
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    #v2=(UninitRef);
    iget-object v3, p0, Lcom/android/ex/photo/PhotoViewActivity$BitmapCallback;->this$0:Lcom/android/ex/photo/PhotoViewActivity;

    #v3=(Reference);
    invoke-virtual {v3}, Lcom/android/ex/photo/PhotoViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1061
    .local v2, drawable:Landroid/graphics/drawable/BitmapDrawable;
    #v2=(Reference);
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1046
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1026
    check-cast p2, Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/ex/photo/PhotoViewActivity$BitmapCallback;->onLoadFinished(Landroid/support/v4/content/Loader;Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;)V

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
    .line 1070
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;>;"
    return-void
.end method
