.class Landroid/support/v4/app/LoaderManagerImpl;
.super Landroid/support/v4/app/LoaderManager;
.source "LoaderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
    }
.end annotation


# static fields
.field static DEBUG:Z


# instance fields
.field mActivity:Landroid/support/v4/app/FragmentActivity;

.field final mInactiveLoaders:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mLoaders:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;",
            ">;"
        }
    .end annotation
.end field

.field mRetaining:Z

.field mStarted:Z

.field final mWho:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    #v0=(Null);
    sput-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;Z)V
    .locals 1
    .parameter "who"
    .parameter "activity"
    .parameter "started"

    .prologue
    .line 477
    invoke-direct {p0}, Landroid/support/v4/app/LoaderManager;-><init>()V

    .line 194
    #p0=(Reference);
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    .line 200
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/util/SparseArrayCompat;

    .line 478
    iput-object p1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mWho:Ljava/lang/String;

    .line 479
    iput-object p2, p0, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    .line 480
    iput-boolean p3, p0, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z

    .line 481
    return-void
.end method


# virtual methods
.method doDestroy()V
    .locals 4

    .prologue
    .line 773
    iget-boolean v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mRetaining:Z

    #v1=(Boolean);
    if-nez v1, :cond_2

    .line 774
    sget-boolean v1, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "LoaderManager"

    #v1=(Reference);
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #v2=(Reference);
    const-string v3, "Destroying Active in "

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v1

    #v1=(Integer);
    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    #v0=(Integer);v1=(Conflicted);
    if-ltz v0, :cond_1

    .line 776
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    #v1=(Reference);
    invoke-virtual {v1, v0}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 775
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 778
    :cond_1
    #v1=(Conflicted);
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/support/v4/util/SparseArrayCompat;->clear()V

    .line 781
    .end local v0           #i:I
    :cond_2
    #v0=(Conflicted);v1=(Conflicted);
    sget-boolean v1, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    #v1=(Boolean);
    if-eqz v1, :cond_3

    const-string v1, "LoaderManager"

    #v1=(Reference);
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #v2=(Reference);
    const-string v3, "Destroying Inactive in "

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    :cond_3
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/util/SparseArrayCompat;

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v1

    #v1=(Integer);
    add-int/lit8 v0, v1, -0x1

    .restart local v0       #i:I
    :goto_1
    #v0=(Integer);v1=(Conflicted);
    if-ltz v0, :cond_4

    .line 783
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/util/SparseArrayCompat;

    #v1=(Reference);
    invoke-virtual {v1, v0}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 782
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 785
    :cond_4
    #v1=(Conflicted);
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/util/SparseArrayCompat;

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/support/v4/util/SparseArrayCompat;->clear()V

    .line 786
    return-void
.end method

.method doReportNextStart()V
    .locals 3

    .prologue
    .line 761
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v1

    #v1=(Integer);
    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    #v0=(Integer);v1=(Conflicted);v2=(Conflicted);
    if-ltz v0, :cond_0

    .line 762
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    #v1=(Reference);
    invoke-virtual {v1, v0}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    const/4 v2, 0x1

    #v2=(One);
    iput-boolean v2, v1, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mReportNextStart:Z

    .line 761
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 764
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);
    return-void
.end method

.method doReportStart()V
    .locals 2

    .prologue
    .line 767
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v1

    #v1=(Integer);
    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    #v0=(Integer);v1=(Conflicted);
    if-ltz v0, :cond_0

    .line 768
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    #v1=(Reference);
    invoke-virtual {v1, v0}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->reportStart()V

    .line 767
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 770
    :cond_0
    #v1=(Conflicted);
    return-void
.end method

.method doRetain()V
    .locals 5

    .prologue
    .line 734
    sget-boolean v2, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    #v2=(Boolean);
    if-eqz v2, :cond_0

    const-string v2, "LoaderManager"

    #v2=(Reference);
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #v3=(Reference);
    const-string v4, "Retaining in "

    #v4=(Reference);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    :cond_0
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    iget-boolean v2, p0, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z

    #v2=(Boolean);
    if-nez v2, :cond_2

    .line 736
    new-instance v0, Ljava/lang/RuntimeException;

    #v0=(UninitRef);
    const-string v2, "here"

    #v2=(Reference);
    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 737
    .local v0, e:Ljava/lang/RuntimeException;
    #v0=(Reference);
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 738
    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #v3=(Reference);
    const-string v4, "Called doRetain when not started: "

    #v4=(Reference);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 747
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return-void

    .line 742
    :cond_2
    #v0=(Uninit);v1=(Uninit);v2=(Boolean);
    const/4 v2, 0x1

    #v2=(One);
    iput-boolean v2, p0, Landroid/support/v4/app/LoaderManagerImpl;->mRetaining:Z

    .line 743
    const/4 v2, 0x0

    #v2=(Null);
    iput-boolean v2, p0, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z

    .line 744
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    #v2=(Reference);
    invoke-virtual {v2}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v2

    #v2=(Integer);
    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    #v1=(Integer);v2=(Conflicted);
    if-ltz v1, :cond_1

    .line 745
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    #v2=(Reference);
    invoke-virtual {v2, v1}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v2}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->retain()V

    .line 744
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method doStart()V
    .locals 5

    .prologue
    .line 701
    sget-boolean v2, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    #v2=(Boolean);
    if-eqz v2, :cond_0

    const-string v2, "LoaderManager"

    #v2=(Reference);
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #v3=(Reference);
    const-string v4, "Starting in "

    #v4=(Reference);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :cond_0
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    iget-boolean v2, p0, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z

    #v2=(Boolean);
    if-eqz v2, :cond_2

    .line 703
    new-instance v0, Ljava/lang/RuntimeException;

    #v0=(UninitRef);
    const-string v2, "here"

    #v2=(Reference);
    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 704
    .local v0, e:Ljava/lang/RuntimeException;
    #v0=(Reference);
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 705
    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #v3=(Reference);
    const-string v4, "Called doStart when already started: "

    #v4=(Reference);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 716
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return-void

    .line 709
    :cond_2
    #v0=(Uninit);v1=(Uninit);v2=(Boolean);
    const/4 v2, 0x1

    #v2=(One);
    iput-boolean v2, p0, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z

    .line 713
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    #v2=(Reference);
    invoke-virtual {v2}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v2

    #v2=(Integer);
    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    #v1=(Integer);v2=(Conflicted);
    if-ltz v1, :cond_1

    .line 714
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    #v2=(Reference);
    invoke-virtual {v2, v1}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v2}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->start()V

    .line 713
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method doStop()V
    .locals 5

    .prologue
    .line 719
    sget-boolean v2, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    #v2=(Boolean);
    if-eqz v2, :cond_0

    const-string v2, "LoaderManager"

    #v2=(Reference);
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #v3=(Reference);
    const-string v4, "Stopping in "

    #v4=(Reference);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :cond_0
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    iget-boolean v2, p0, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z

    #v2=(Boolean);
    if-nez v2, :cond_1

    .line 721
    new-instance v0, Ljava/lang/RuntimeException;

    #v0=(UninitRef);
    const-string v2, "here"

    #v2=(Reference);
    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 722
    .local v0, e:Ljava/lang/RuntimeException;
    #v0=(Reference);
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 723
    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #v3=(Reference);
    const-string v4, "Called doStop when not started: "

    #v4=(Reference);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 731
    .end local v0           #e:Ljava/lang/RuntimeException;
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return-void

    .line 727
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Boolean);
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    #v2=(Reference);
    invoke-virtual {v2}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v2

    #v2=(Integer);
    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_1
    #v1=(Integer);v2=(Conflicted);
    if-ltz v1, :cond_2

    .line 728
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    #v2=(Reference);
    invoke-virtual {v2, v1}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v2}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->stop()V

    .line 727
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 730
    :cond_2
    #v2=(Conflicted);
    const/4 v2, 0x0

    #v2=(Null);
    iput-boolean v2, p0, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .parameter "prefix"
    .parameter "fd"
    .parameter "writer"
    .parameter "args"

    .prologue
    .line 801
    iget-object v3, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    #v3=(Reference);
    invoke-virtual {v3}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v3

    #v3=(Integer);
    if-lez v3, :cond_0

    .line 802
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Active Loaders:"

    #v3=(Reference);
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 803
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #v3=(Reference);
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    "

    #v4=(Reference);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 804
    .local v1, innerPrefix:Ljava/lang/String;
    #v1=(Reference);
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    #v0=(Integer);v2=(Conflicted);
    iget-object v3, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v3}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v3

    #v3=(Integer);
    if-ge v0, v3, :cond_0

    .line 805
    iget-object v3, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    #v3=(Reference);
    invoke-virtual {v3, v0}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    .line 806
    .local v2, li:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v3, v0}, Landroid/support/v4/util/SparseArrayCompat;->keyAt(I)I

    move-result v3

    #v3=(Integer);
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 807
    const-string v3, ": "

    #v3=(Reference);
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 808
    invoke-virtual {v2, v1, p2, p3, p4}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 804
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 811
    .end local v0           #i:I
    .end local v1           #innerPrefix:Ljava/lang/String;
    .end local v2           #li:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Integer);v4=(Conflicted);
    iget-object v3, p0, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/util/SparseArrayCompat;

    #v3=(Reference);
    invoke-virtual {v3}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v3

    #v3=(Integer);
    if-lez v3, :cond_1

    .line 812
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Inactive Loaders:"

    #v3=(Reference);
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 813
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #v3=(Reference);
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    "

    #v4=(Reference);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 814
    .restart local v1       #innerPrefix:Ljava/lang/String;
    #v1=(Reference);
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    #v0=(Integer);
    iget-object v3, p0, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v3}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v3

    #v3=(Integer);
    if-ge v0, v3, :cond_1

    .line 815
    iget-object v3, p0, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/util/SparseArrayCompat;

    #v3=(Reference);
    invoke-virtual {v3, v0}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    .line 816
    .restart local v2       #li:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v3, v0}, Landroid/support/v4/util/SparseArrayCompat;->keyAt(I)I

    move-result v3

    #v3=(Integer);
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 817
    const-string v3, ": "

    #v3=(Reference);
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 818
    invoke-virtual {v2, v1, p2, p3, p4}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 814
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 821
    .end local v0           #i:I
    .end local v1           #innerPrefix:Ljava/lang/String;
    .end local v2           #li:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
    :cond_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Integer);v4=(Conflicted);
    return-void
.end method

.method finishRetain()V
    .locals 4

    .prologue
    .line 750
    iget-boolean v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mRetaining:Z

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 751
    sget-boolean v1, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "LoaderManager"

    #v1=(Reference);
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #v2=(Reference);
    const-string v3, "Finished Retaining in "

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    const/4 v1, 0x0

    #v1=(Null);
    iput-boolean v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mRetaining:Z

    .line 754
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v1

    #v1=(Integer);
    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    #v0=(Integer);v1=(Conflicted);
    if-ltz v0, :cond_1

    .line 755
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    #v1=(Reference);
    invoke-virtual {v1, v0}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->finishRetain()V

    .line 754
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 758
    .end local v0           #i:I
    :cond_1
    #v0=(Conflicted);v1=(Conflicted);
    return-void
.end method

.method public hasRunningLoaders()Z
    .locals 5

    .prologue
    .line 825
    const/4 v3, 0x0

    .line 826
    .local v3, loadersRunning:Z
    #v3=(Null);
    iget-object v4, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    #v4=(Reference);
    invoke-virtual {v4}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    .line 827
    .local v0, count:I
    #v0=(Integer);
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    #v1=(Integer);v2=(Conflicted);v3=(Boolean);v4=(Conflicted);
    if-ge v1, v0, :cond_1

    .line 828
    iget-object v4, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    #v4=(Reference);
    invoke-virtual {v4, v1}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    .line 829
    .local v2, li:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
    iget-boolean v4, v2, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    #v4=(Boolean);
    if-eqz v4, :cond_0

    iget-boolean v4, v2, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_1
    or-int/2addr v3, v4

    .line 827
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 829
    :cond_0
    const/4 v4, 0x0

    #v4=(Null);
    goto :goto_1

    .line 831
    .end local v2           #li:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
    :cond_1
    #v2=(Conflicted);v4=(Conflicted);
    return v3
.end method

.method installLoader(Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 508
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    #v0=(Reference);
    iget v1, p1, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I

    #v1=(Integer);
    invoke-virtual {v0, v1, p1}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 509
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 513
    invoke-virtual {p1}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->start()V

    .line 515
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 790
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    const/16 v1, 0x80

    #v1=(PosShort);
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 791
    .local v0, sb:Ljava/lang/StringBuilder;
    #v0=(Reference);
    const-string v1, "LoaderManager{"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    #v1=(Integer);
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v1, v0}, Landroid/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 795
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method updateActivity(Landroid/support/v4/app/FragmentActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 484
    iput-object p1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    .line 485
    return-void
.end method
