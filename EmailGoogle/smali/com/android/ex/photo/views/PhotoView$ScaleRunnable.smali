.class Lcom/android/ex/photo/views/PhotoView$ScaleRunnable;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/photo/views/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScaleRunnable"
.end annotation


# instance fields
.field private mCenterX:F

.field private mCenterY:F

.field private final mHeader:Lcom/android/ex/photo/views/PhotoView;

.field private mRunning:Z

.field private mStartScale:F

.field private mStartTime:J

.field private mStop:Z

.field private mTargetScale:F

.field private mVelocity:F

.field private mZoomingIn:Z


# direct methods
.method public constructor <init>(Lcom/android/ex/photo/views/PhotoView;)V
    .locals 0
    .parameter "header"

    .prologue
    .line 1036
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1037
    #p0=(Reference);
    iput-object p1, p0, Lcom/android/ex/photo/views/PhotoView$ScaleRunnable;->mHeader:Lcom/android/ex/photo/views/PhotoView;

    .line 1038
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 1073
    iget-boolean v5, p0, Lcom/android/ex/photo/views/PhotoView$ScaleRunnable;->mStop:Z

    #v5=(Boolean);
    if-eqz v5, :cond_1

    .line 1092
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    return-void

    .line 1078
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Boolean);v6=(Uninit);v7=(Uninit);v8=(Uninit);
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1079
    .local v3, now:J
    #v3=(LongLo);v4=(LongHi);
    iget-wide v5, p0, Lcom/android/ex/photo/views/PhotoView$ScaleRunnable;->mStartTime:J

    #v5=(LongLo);v6=(LongHi);
    sub-long v0, v3, v5

    .line 1080
    .local v0, ellapsed:J
    #v0=(LongLo);v1=(LongHi);
    iget v5, p0, Lcom/android/ex/photo/views/PhotoView$ScaleRunnable;->mStartScale:F

    #v5=(Integer);
    iget v6, p0, Lcom/android/ex/photo/views/PhotoView$ScaleRunnable;->mVelocity:F

    #v6=(Integer);
    long-to-float v7, v0

    #v7=(Float);
    mul-float/2addr v6, v7

    #v6=(Float);
    add-float v2, v5, v6

    .line 1081
    .local v2, newScale:F
    #v2=(Float);
    iget-object v5, p0, Lcom/android/ex/photo/views/PhotoView$ScaleRunnable;->mHeader:Lcom/android/ex/photo/views/PhotoView;

    #v5=(Reference);
    iget v6, p0, Lcom/android/ex/photo/views/PhotoView$ScaleRunnable;->mCenterX:F

    #v6=(Integer);
    iget v7, p0, Lcom/android/ex/photo/views/PhotoView$ScaleRunnable;->mCenterY:F

    #v7=(Integer);
    invoke-static {v5, v2, v6, v7}, Lcom/android/ex/photo/views/PhotoView;->access$100(Lcom/android/ex/photo/views/PhotoView;FFF)V

    .line 1084
    iget v5, p0, Lcom/android/ex/photo/views/PhotoView$ScaleRunnable;->mTargetScale:F

    #v5=(Integer);
    cmpl-float v5, v2, v5

    #v5=(Byte);
    if-eqz v5, :cond_2

    iget-boolean v6, p0, Lcom/android/ex/photo/views/PhotoView$ScaleRunnable;->mZoomingIn:Z

    #v6=(Boolean);
    iget v5, p0, Lcom/android/ex/photo/views/PhotoView$ScaleRunnable;->mTargetScale:F

    #v5=(Integer);
    cmpl-float v5, v2, v5

    #v5=(Byte);
    if-lez v5, :cond_4

    const/4 v5, 0x1

    :goto_1
    #v5=(Boolean);
    if-ne v6, v5, :cond_3

    .line 1085
    :cond_2
    #v5=(Byte);v6=(Integer);
    iget-object v5, p0, Lcom/android/ex/photo/views/PhotoView$ScaleRunnable;->mHeader:Lcom/android/ex/photo/views/PhotoView;

    #v5=(Reference);
    iget v6, p0, Lcom/android/ex/photo/views/PhotoView$ScaleRunnable;->mTargetScale:F

    iget v7, p0, Lcom/android/ex/photo/views/PhotoView$ScaleRunnable;->mCenterX:F

    iget v8, p0, Lcom/android/ex/photo/views/PhotoView$ScaleRunnable;->mCenterY:F

    #v8=(Integer);
    invoke-static {v5, v6, v7, v8}, Lcom/android/ex/photo/views/PhotoView;->access$100(Lcom/android/ex/photo/views/PhotoView;FFF)V

    .line 1086
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView$ScaleRunnable;->stop()V

    .line 1089
    :cond_3
    #v5=(Conflicted);v8=(Conflicted);
    iget-boolean v5, p0, Lcom/android/ex/photo/views/PhotoView$ScaleRunnable;->mStop:Z

    #v5=(Boolean);
    if-nez v5, :cond_0

    .line 1090
    iget-object v5, p0, Lcom/android/ex/photo/views/PhotoView$ScaleRunnable;->mHeader:Lcom/android/ex/photo/views/PhotoView;

    #v5=(Reference);
    invoke-virtual {v5, p0}, Lcom/android/ex/photo/views/PhotoView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1084
    :cond_4
    #v5=(Byte);v6=(Boolean);v8=(Uninit);
    const/4 v5, 0x0

    #v5=(Null);
    goto :goto_1
.end method

.method public start(FFFF)Z
    .locals 5
    .parameter "startScale"
    .parameter "targetScale"
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    const/4 v1, 0x1

    #v1=(One);
    const/4 v2, 0x0

    .line 1044
    #v2=(Null);
    iget-boolean v0, p0, Lcom/android/ex/photo/views/PhotoView$ScaleRunnable;->mRunning:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 1060
    :goto_0
    #v0=(Conflicted);v2=(Boolean);v3=(Conflicted);v4=(Conflicted);
    return v2

    .line 1048
    :cond_0
    #v0=(Boolean);v2=(Null);v3=(Uninit);v4=(Uninit);
    iput p3, p0, Lcom/android/ex/photo/views/PhotoView$ScaleRunnable;->mCenterX:F

    .line 1049
    iput p4, p0, Lcom/android/ex/photo/views/PhotoView$ScaleRunnable;->mCenterY:F

    .line 1052
    iput p2, p0, Lcom/android/ex/photo/views/PhotoView$ScaleRunnable;->mTargetScale:F

    .line 1053
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    #v3=(LongLo);v4=(LongHi);
    iput-wide v3, p0, Lcom/android/ex/photo/views/PhotoView$ScaleRunnable;->mStartTime:J

    .line 1054
    iput p1, p0, Lcom/android/ex/photo/views/PhotoView$ScaleRunnable;->mStartScale:F

    .line 1055
    iget v0, p0, Lcom/android/ex/photo/views/PhotoView$ScaleRunnable;->mTargetScale:F

    #v0=(Integer);
    iget v3, p0, Lcom/android/ex/photo/views/PhotoView$ScaleRunnable;->mStartScale:F

    #v3=(Integer);
    cmpl-float v0, v0, v3

    #v0=(Byte);
    if-lez v0, :cond_1

    move v0, v1

    :goto_1
    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/ex/photo/views/PhotoView$ScaleRunnable;->mZoomingIn:Z

    .line 1056
    iget v0, p0, Lcom/android/ex/photo/views/PhotoView$ScaleRunnable;->mTargetScale:F

    #v0=(Integer);
    iget v3, p0, Lcom/android/ex/photo/views/PhotoView$ScaleRunnable;->mStartScale:F

    sub-float/2addr v0, v3

    #v0=(Float);
    const/high16 v3, 0x4396

    div-float/2addr v0, v3

    iput v0, p0, Lcom/android/ex/photo/views/PhotoView$ScaleRunnable;->mVelocity:F

    .line 1057
    iput-boolean v1, p0, Lcom/android/ex/photo/views/PhotoView$ScaleRunnable;->mRunning:Z

    .line 1058
    iput-boolean v2, p0, Lcom/android/ex/photo/views/PhotoView$ScaleRunnable;->mStop:Z

    .line 1059
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView$ScaleRunnable;->mHeader:Lcom/android/ex/photo/views/PhotoView;

    #v0=(Reference);
    invoke-virtual {v0, p0}, Lcom/android/ex/photo/views/PhotoView;->post(Ljava/lang/Runnable;)Z

    move v2, v1

    .line 1060
    #v2=(One);
    goto :goto_0

    :cond_1
    #v0=(Byte);v2=(Null);
    move v0, v2

    .line 1055
    #v0=(Null);
    goto :goto_1
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 1067
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/ex/photo/views/PhotoView$ScaleRunnable;->mRunning:Z

    .line 1068
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/android/ex/photo/views/PhotoView$ScaleRunnable;->mStop:Z

    .line 1069
    return-void
.end method
