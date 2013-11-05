.class Lcom/android/ex/photo/fragments/PhotoViewFragment$InternetStateBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhotoViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/photo/fragments/PhotoViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternetStateBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/photo/fragments/PhotoViewFragment;


# direct methods
.method private constructor <init>(Lcom/android/ex/photo/fragments/PhotoViewFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 593
    iput-object p1, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment$InternetStateBroadcastReceiver;->this$0:Lcom/android/ex/photo/fragments/PhotoViewFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ex/photo/fragments/PhotoViewFragment;Lcom/android/ex/photo/fragments/PhotoViewFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 593
    invoke-direct {p0, p1}, Lcom/android/ex/photo/fragments/PhotoViewFragment$InternetStateBroadcastReceiver;-><init>(Lcom/android/ex/photo/fragments/PhotoViewFragment;)V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    #v6=(Null);
    const/4 v5, 0x0

    .line 598
    #v5=(Null);
    const-string v2, "connectivity"

    #v2=(Reference);
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 600
    .local v1, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 601
    .local v0, activeNetInfo:Landroid/net/NetworkInfo;
    #v0=(Reference);
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_2

    .line 602
    :cond_0
    #v2=(Conflicted);
    iget-object v2, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment$InternetStateBroadcastReceiver;->this$0:Lcom/android/ex/photo/fragments/PhotoViewFragment;

    #v2=(Reference);
    iput-boolean v5, v2, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mConnected:Z

    .line 615
    :cond_1
    :goto_0
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return-void

    .line 605
    :cond_2
    #v2=(Boolean);v3=(Uninit);v4=(Uninit);
    iget-object v2, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment$InternetStateBroadcastReceiver;->this$0:Lcom/android/ex/photo/fragments/PhotoViewFragment;

    #v2=(Reference);
    iget-boolean v2, v2, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mConnected:Z

    #v2=(Boolean);
    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment$InternetStateBroadcastReceiver;->this$0:Lcom/android/ex/photo/fragments/PhotoViewFragment;

    #v2=(Reference);
    invoke-virtual {v2}, Lcom/android/ex/photo/fragments/PhotoViewFragment;->isPhotoBound()Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_1

    .line 606
    iget-object v2, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment$InternetStateBroadcastReceiver;->this$0:Lcom/android/ex/photo/fragments/PhotoViewFragment;

    #v2=(Reference);
    iget-boolean v2, v2, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mThumbnailShown:Z

    #v2=(Boolean);
    if-nez v2, :cond_3

    .line 607
    iget-object v2, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment$InternetStateBroadcastReceiver;->this$0:Lcom/android/ex/photo/fragments/PhotoViewFragment;

    #v2=(Reference);
    invoke-virtual {v2}, Lcom/android/ex/photo/fragments/PhotoViewFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x2

    #v3=(PosByte);
    iget-object v4, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment$InternetStateBroadcastReceiver;->this$0:Lcom/android/ex/photo/fragments/PhotoViewFragment;

    #v4=(Reference);
    invoke-virtual {v2, v3, v6, v4}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 610
    :cond_3
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    iget-object v2, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment$InternetStateBroadcastReceiver;->this$0:Lcom/android/ex/photo/fragments/PhotoViewFragment;

    #v2=(Reference);
    invoke-virtual {v2}, Lcom/android/ex/photo/fragments/PhotoViewFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x3

    #v3=(PosByte);
    iget-object v4, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment$InternetStateBroadcastReceiver;->this$0:Lcom/android/ex/photo/fragments/PhotoViewFragment;

    #v4=(Reference);
    invoke-virtual {v2, v3, v6, v4}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 612
    iget-object v2, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment$InternetStateBroadcastReceiver;->this$0:Lcom/android/ex/photo/fragments/PhotoViewFragment;

    const/4 v3, 0x1

    #v3=(One);
    iput-boolean v3, v2, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mConnected:Z

    .line 613
    iget-object v2, p0, Lcom/android/ex/photo/fragments/PhotoViewFragment$InternetStateBroadcastReceiver;->this$0:Lcom/android/ex/photo/fragments/PhotoViewFragment;

    iget-object v2, v2, Lcom/android/ex/photo/fragments/PhotoViewFragment;->mPhotoProgressBar:Lcom/android/ex/photo/views/ProgressBarWrapper;

    invoke-virtual {v2, v5}, Lcom/android/ex/photo/views/ProgressBarWrapper;->setVisibility(I)V

    goto :goto_0
.end method
