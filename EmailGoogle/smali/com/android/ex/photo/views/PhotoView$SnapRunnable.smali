.class Lcom/android/ex/photo/views/PhotoView$SnapRunnable;
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
    name = "SnapRunnable"
.end annotation


# instance fields
.field private final mHeader:Lcom/android/ex/photo/views/PhotoView;

.field private mRunning:Z

.field private mStartRunTime:J

.field private mStop:Z

.field private mTranslateX:F

.field private mTranslateY:F


# direct methods
.method public constructor <init>(Lcom/android/ex/photo/views/PhotoView;)V
    .locals 2
    .parameter "header"

    .prologue
    .line 1208
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1209
    #p0=(Reference);
    const-wide/16 v0, -0x1

    #v0=(LongLo);v1=(LongHi);
    iput-wide v0, p0, Lcom/android/ex/photo/views/PhotoView$SnapRunnable;->mStartRunTime:J

    .line 1210
    iput-object p1, p0, Lcom/android/ex/photo/views/PhotoView$SnapRunnable;->mHeader:Lcom/android/ex/photo/views/PhotoView;

    .line 1211
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const-wide/16 v11, -0x1

    #v11=(LongLo);v12=(LongHi);
    const/high16 v10, 0x7fc0

    #v10=(Integer);
    const/high16 v9, 0x4120

    #v9=(Integer);
    const/high16 v8, 0x42c8

    #v8=(Integer);
    const/4 v5, 0x0

    .line 1240
    #v5=(Null);
    iget-boolean v6, p0, Lcom/android/ex/photo/views/PhotoView$SnapRunnable;->mStop:Z

    #v6=(Boolean);
    if-eqz v6, :cond_1

    .line 1281
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Integer);v7=(Conflicted);
    return-void

    .line 1245
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Null);v6=(Boolean);v7=(Uninit);
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1246
    .local v1, now:J
    #v1=(LongLo);v2=(LongHi);
    iget-wide v6, p0, Lcom/android/ex/photo/views/PhotoView$SnapRunnable;->mStartRunTime:J

    #v6=(LongLo);v7=(LongHi);
    cmp-long v6, v6, v11

    #v6=(Byte);
    if-eqz v6, :cond_5

    iget-wide v6, p0, Lcom/android/ex/photo/views/PhotoView$SnapRunnable;->mStartRunTime:J

    #v6=(LongLo);
    sub-long v6, v1, v6

    long-to-float v0, v6

    .line 1248
    .local v0, delta:F
    :goto_1
    #v0=(Float);v6=(Conflicted);
    iget-wide v6, p0, Lcom/android/ex/photo/views/PhotoView$SnapRunnable;->mStartRunTime:J

    #v6=(LongLo);
    cmp-long v6, v6, v11

    #v6=(Byte);
    if-nez v6, :cond_2

    .line 1249
    iput-wide v1, p0, Lcom/android/ex/photo/views/PhotoView$SnapRunnable;->mStartRunTime:J

    .line 1254
    :cond_2
    cmpl-float v6, v0, v8

    if-ltz v6, :cond_6

    .line 1255
    iget v3, p0, Lcom/android/ex/photo/views/PhotoView$SnapRunnable;->mTranslateX:F

    .line 1256
    .local v3, transX:F
    #v3=(Integer);
    iget v4, p0, Lcom/android/ex/photo/views/PhotoView$SnapRunnable;->mTranslateY:F

    .line 1268
    .local v4, transY:F
    :cond_3
    :goto_2
    #v4=(Integer);v7=(Conflicted);
    iget-object v6, p0, Lcom/android/ex/photo/views/PhotoView$SnapRunnable;->mHeader:Lcom/android/ex/photo/views/PhotoView;

    #v6=(Reference);
    invoke-static {v6, v3, v4}, Lcom/android/ex/photo/views/PhotoView;->access$200(Lcom/android/ex/photo/views/PhotoView;FF)Z

    .line 1269
    iget v6, p0, Lcom/android/ex/photo/views/PhotoView$SnapRunnable;->mTranslateX:F

    #v6=(Integer);
    sub-float/2addr v6, v3

    #v6=(Float);
    iput v6, p0, Lcom/android/ex/photo/views/PhotoView$SnapRunnable;->mTranslateX:F

    .line 1270
    iget v6, p0, Lcom/android/ex/photo/views/PhotoView$SnapRunnable;->mTranslateY:F

    #v6=(Integer);
    sub-float/2addr v6, v4

    #v6=(Float);
    iput v6, p0, Lcom/android/ex/photo/views/PhotoView$SnapRunnable;->mTranslateY:F

    .line 1272
    iget v6, p0, Lcom/android/ex/photo/views/PhotoView$SnapRunnable;->mTranslateX:F

    #v6=(Integer);
    cmpl-float v6, v6, v5

    #v6=(Byte);
    if-nez v6, :cond_4

    iget v6, p0, Lcom/android/ex/photo/views/PhotoView$SnapRunnable;->mTranslateY:F

    #v6=(Integer);
    cmpl-float v5, v6, v5

    #v5=(Byte);
    if-nez v5, :cond_4

    .line 1273
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView$SnapRunnable;->stop()V

    .line 1277
    :cond_4
    iget-boolean v5, p0, Lcom/android/ex/photo/views/PhotoView$SnapRunnable;->mStop:Z

    #v5=(Boolean);
    if-nez v5, :cond_0

    .line 1280
    iget-object v5, p0, Lcom/android/ex/photo/views/PhotoView$SnapRunnable;->mHeader:Lcom/android/ex/photo/views/PhotoView;

    #v5=(Reference);
    invoke-virtual {v5, p0}, Lcom/android/ex/photo/views/PhotoView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .end local v0           #delta:F
    .end local v3           #transX:F
    .end local v4           #transY:F
    :cond_5
    #v0=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Null);v6=(Byte);v7=(LongHi);
    move v0, v5

    .line 1246
    #v0=(Null);
    goto :goto_1

    .line 1258
    .restart local v0       #delta:F
    :cond_6
    #v0=(Float);
    iget v6, p0, Lcom/android/ex/photo/views/PhotoView$SnapRunnable;->mTranslateX:F

    #v6=(Integer);
    sub-float v7, v8, v0

    #v7=(Float);
    div-float/2addr v6, v7

    #v6=(Float);
    mul-float v3, v6, v9

    .line 1259
    .restart local v3       #transX:F
    #v3=(Float);
    iget v6, p0, Lcom/android/ex/photo/views/PhotoView$SnapRunnable;->mTranslateY:F

    #v6=(Integer);
    sub-float v7, v8, v0

    div-float/2addr v6, v7

    #v6=(Float);
    mul-float v4, v6, v9

    .line 1260
    .restart local v4       #transY:F
    #v4=(Float);
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/android/ex/photo/views/PhotoView$SnapRunnable;->mTranslateX:F

    #v7=(Integer);
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    #v7=(Float);
    cmpl-float v6, v6, v7

    #v6=(Byte);
    if-gtz v6, :cond_7

    cmpl-float v6, v3, v10

    if-nez v6, :cond_8

    .line 1261
    :cond_7
    iget v3, p0, Lcom/android/ex/photo/views/PhotoView$SnapRunnable;->mTranslateX:F

    .line 1263
    :cond_8
    #v3=(Integer);
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    #v6=(Float);
    iget v7, p0, Lcom/android/ex/photo/views/PhotoView$SnapRunnable;->mTranslateY:F

    #v7=(Integer);
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    #v7=(Float);
    cmpl-float v6, v6, v7

    #v6=(Byte);
    if-gtz v6, :cond_9

    cmpl-float v6, v4, v10

    if-nez v6, :cond_3

    .line 1264
    :cond_9
    iget v4, p0, Lcom/android/ex/photo/views/PhotoView$SnapRunnable;->mTranslateY:F

    #v4=(Integer);
    goto :goto_2
.end method

.method public start(FF)Z
    .locals 4
    .parameter "translateX"
    .parameter "translateY"

    .prologue
    const/4 v1, 0x1

    #v1=(One);
    const/4 v0, 0x0

    .line 1217
    #v0=(Null);
    iget-boolean v2, p0, Lcom/android/ex/photo/views/PhotoView$SnapRunnable;->mRunning:Z

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 1226
    :goto_0
    #v0=(Boolean);v2=(Conflicted);v3=(Conflicted);
    return v0

    .line 1220
    :cond_0
    #v0=(Null);v2=(Boolean);v3=(Uninit);
    const-wide/16 v2, -0x1

    #v2=(LongLo);v3=(LongHi);
    iput-wide v2, p0, Lcom/android/ex/photo/views/PhotoView$SnapRunnable;->mStartRunTime:J

    .line 1221
    iput p1, p0, Lcom/android/ex/photo/views/PhotoView$SnapRunnable;->mTranslateX:F

    .line 1222
    iput p2, p0, Lcom/android/ex/photo/views/PhotoView$SnapRunnable;->mTranslateY:F

    .line 1223
    iput-boolean v0, p0, Lcom/android/ex/photo/views/PhotoView$SnapRunnable;->mStop:Z

    .line 1224
    iput-boolean v1, p0, Lcom/android/ex/photo/views/PhotoView$SnapRunnable;->mRunning:Z

    .line 1225
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView$SnapRunnable;->mHeader:Lcom/android/ex/photo/views/PhotoView;

    #v0=(Reference);
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, p0, v2, v3}, Lcom/android/ex/photo/views/PhotoView;->postDelayed(Ljava/lang/Runnable;J)Z

    move v0, v1

    .line 1226
    #v0=(One);
    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 1233
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/ex/photo/views/PhotoView$SnapRunnable;->mRunning:Z

    .line 1234
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/android/ex/photo/views/PhotoView$SnapRunnable;->mStop:Z

    .line 1235
    return-void
.end method
