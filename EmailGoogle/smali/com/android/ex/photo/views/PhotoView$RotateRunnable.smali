.class Lcom/android/ex/photo/views/PhotoView$RotateRunnable;
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
    name = "RotateRunnable"
.end annotation


# instance fields
.field private mAppliedRotation:F

.field private final mHeader:Lcom/android/ex/photo/views/PhotoView;

.field private mLastRuntime:J

.field private mRunning:Z

.field private mStop:Z

.field private mTargetRotation:F

.field private mVelocity:F


# direct methods
.method public constructor <init>(Lcom/android/ex/photo/views/PhotoView;)V
    .locals 0
    .parameter "header"

    .prologue
    .line 1301
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1302
    #p0=(Reference);
    iput-object p1, p0, Lcom/android/ex/photo/views/PhotoView$RotateRunnable;->mHeader:Lcom/android/ex/photo/views/PhotoView;

    .line 1303
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 1332
    iget-boolean v5, p0, Lcom/android/ex/photo/views/PhotoView$RotateRunnable;->mStop:Z

    #v5=(Boolean);
    if-eqz v5, :cond_1

    .line 1358
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    return-void

    .line 1336
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Boolean);v6=(Uninit);v7=(Uninit);v8=(Uninit);
    iget v5, p0, Lcom/android/ex/photo/views/PhotoView$RotateRunnable;->mAppliedRotation:F

    #v5=(Integer);
    iget v6, p0, Lcom/android/ex/photo/views/PhotoView$RotateRunnable;->mTargetRotation:F

    #v6=(Integer);
    cmpl-float v5, v5, v6

    #v5=(Byte);
    if-eqz v5, :cond_6

    .line 1337
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1338
    .local v2, now:J
    #v2=(LongLo);v3=(LongHi);
    iget-wide v5, p0, Lcom/android/ex/photo/views/PhotoView$RotateRunnable;->mLastRuntime:J

    #v5=(LongLo);v6=(LongHi);
    const-wide/16 v7, -0x1

    #v7=(LongLo);v8=(LongHi);
    cmp-long v5, v5, v7

    #v5=(Byte);
    if-eqz v5, :cond_7

    iget-wide v5, p0, Lcom/android/ex/photo/views/PhotoView$RotateRunnable;->mLastRuntime:J

    #v5=(LongLo);
    sub-long v0, v2, v5

    .line 1339
    .local v0, delta:J
    :goto_1
    #v0=(LongLo);v1=(LongHi);v5=(Conflicted);
    iget v5, p0, Lcom/android/ex/photo/views/PhotoView$RotateRunnable;->mVelocity:F

    #v5=(Integer);
    long-to-float v6, v0

    #v6=(Float);
    mul-float v4, v5, v6

    .line 1340
    .local v4, rotationAmount:F
    #v4=(Float);
    iget v5, p0, Lcom/android/ex/photo/views/PhotoView$RotateRunnable;->mAppliedRotation:F

    iget v6, p0, Lcom/android/ex/photo/views/PhotoView$RotateRunnable;->mTargetRotation:F

    #v6=(Integer);
    cmpg-float v5, v5, v6

    #v5=(Byte);
    if-gez v5, :cond_2

    iget v5, p0, Lcom/android/ex/photo/views/PhotoView$RotateRunnable;->mAppliedRotation:F

    #v5=(Integer);
    add-float/2addr v5, v4

    #v5=(Float);
    iget v6, p0, Lcom/android/ex/photo/views/PhotoView$RotateRunnable;->mTargetRotation:F

    cmpl-float v5, v5, v6

    #v5=(Byte);
    if-gtz v5, :cond_3

    :cond_2
    iget v5, p0, Lcom/android/ex/photo/views/PhotoView$RotateRunnable;->mAppliedRotation:F

    #v5=(Integer);
    iget v6, p0, Lcom/android/ex/photo/views/PhotoView$RotateRunnable;->mTargetRotation:F

    cmpl-float v5, v5, v6

    #v5=(Byte);
    if-lez v5, :cond_4

    iget v5, p0, Lcom/android/ex/photo/views/PhotoView$RotateRunnable;->mAppliedRotation:F

    #v5=(Integer);
    add-float/2addr v5, v4

    #v5=(Float);
    iget v6, p0, Lcom/android/ex/photo/views/PhotoView$RotateRunnable;->mTargetRotation:F

    cmpg-float v5, v5, v6

    #v5=(Byte);
    if-gez v5, :cond_4

    .line 1344
    :cond_3
    iget v5, p0, Lcom/android/ex/photo/views/PhotoView$RotateRunnable;->mTargetRotation:F

    #v5=(Integer);
    iget v6, p0, Lcom/android/ex/photo/views/PhotoView$RotateRunnable;->mAppliedRotation:F

    sub-float v4, v5, v6

    .line 1346
    :cond_4
    iget-object v5, p0, Lcom/android/ex/photo/views/PhotoView$RotateRunnable;->mHeader:Lcom/android/ex/photo/views/PhotoView;

    #v5=(Reference);
    const/4 v6, 0x0

    #v6=(Null);
    invoke-static {v5, v4, v6}, Lcom/android/ex/photo/views/PhotoView;->access$400(Lcom/android/ex/photo/views/PhotoView;FZ)V

    .line 1347
    iget v5, p0, Lcom/android/ex/photo/views/PhotoView$RotateRunnable;->mAppliedRotation:F

    #v5=(Integer);
    add-float/2addr v5, v4

    #v5=(Float);
    iput v5, p0, Lcom/android/ex/photo/views/PhotoView$RotateRunnable;->mAppliedRotation:F

    .line 1348
    iget v5, p0, Lcom/android/ex/photo/views/PhotoView$RotateRunnable;->mAppliedRotation:F

    #v5=(Integer);
    iget v6, p0, Lcom/android/ex/photo/views/PhotoView$RotateRunnable;->mTargetRotation:F

    #v6=(Integer);
    cmpl-float v5, v5, v6

    #v5=(Byte);
    if-nez v5, :cond_5

    .line 1349
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView$RotateRunnable;->stop()V

    .line 1351
    :cond_5
    iput-wide v2, p0, Lcom/android/ex/photo/views/PhotoView$RotateRunnable;->mLastRuntime:J

    .line 1354
    .end local v0           #delta:J
    .end local v2           #now:J
    .end local v4           #rotationAmount:F
    :cond_6
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    iget-boolean v5, p0, Lcom/android/ex/photo/views/PhotoView$RotateRunnable;->mStop:Z

    #v5=(Boolean);
    if-nez v5, :cond_0

    .line 1357
    iget-object v5, p0, Lcom/android/ex/photo/views/PhotoView$RotateRunnable;->mHeader:Lcom/android/ex/photo/views/PhotoView;

    #v5=(Reference);
    invoke-virtual {v5, p0}, Lcom/android/ex/photo/views/PhotoView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1338
    .restart local v2       #now:J
    :cond_7
    #v0=(Uninit);v1=(Uninit);v2=(LongLo);v3=(LongHi);v4=(Uninit);v5=(Byte);v6=(LongHi);v7=(LongLo);v8=(LongHi);
    const-wide/16 v0, 0x0

    #v0=(LongLo);v1=(LongHi);
    goto :goto_1
.end method

.method public start(F)V
    .locals 2
    .parameter "rotation"

    .prologue
    .line 1309
    iget-boolean v0, p0, Lcom/android/ex/photo/views/PhotoView$RotateRunnable;->mRunning:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 1320
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);
    return-void

    .line 1313
    :cond_0
    #v0=(Boolean);v1=(Uninit);
    iput p1, p0, Lcom/android/ex/photo/views/PhotoView$RotateRunnable;->mTargetRotation:F

    .line 1314
    iget v0, p0, Lcom/android/ex/photo/views/PhotoView$RotateRunnable;->mTargetRotation:F

    #v0=(Integer);
    const/high16 v1, 0x43fa

    #v1=(Integer);
    div-float/2addr v0, v1

    #v0=(Float);
    iput v0, p0, Lcom/android/ex/photo/views/PhotoView$RotateRunnable;->mVelocity:F

    .line 1315
    const/4 v0, 0x0

    #v0=(Null);
    iput v0, p0, Lcom/android/ex/photo/views/PhotoView$RotateRunnable;->mAppliedRotation:F

    .line 1316
    const-wide/16 v0, -0x1

    #v0=(LongLo);v1=(LongHi);
    iput-wide v0, p0, Lcom/android/ex/photo/views/PhotoView$RotateRunnable;->mLastRuntime:J

    .line 1317
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/ex/photo/views/PhotoView$RotateRunnable;->mStop:Z

    .line 1318
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/android/ex/photo/views/PhotoView$RotateRunnable;->mRunning:Z

    .line 1319
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView$RotateRunnable;->mHeader:Lcom/android/ex/photo/views/PhotoView;

    #v0=(Reference);
    invoke-virtual {v0, p0}, Lcom/android/ex/photo/views/PhotoView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 1326
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/ex/photo/views/PhotoView$RotateRunnable;->mRunning:Z

    .line 1327
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/android/ex/photo/views/PhotoView$RotateRunnable;->mStop:Z

    .line 1328
    return-void
.end method
