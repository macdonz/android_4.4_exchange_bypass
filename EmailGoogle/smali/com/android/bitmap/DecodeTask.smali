.class public Lcom/android/bitmap/DecodeTask;
.super Landroid/os/AsyncTask;
.source "DecodeTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bitmap/DecodeTask$BitmapView;,
        Lcom/android/bitmap/DecodeTask$Request;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/bitmap/ReusableBitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCache:Lcom/android/bitmap/BitmapCache;

.field private final mDestBufferH:I

.field private final mDestBufferW:I

.field private final mDestH:I

.field private final mDestW:I

.field private mInBitmap:Lcom/android/bitmap/ReusableBitmap;

.field private final mKey:Lcom/android/bitmap/DecodeTask$Request;

.field private final mOpts:Landroid/graphics/BitmapFactory$Options;

.field private final mView:Lcom/android/bitmap/DecodeTask$BitmapView;


# direct methods
.method public constructor <init>(Lcom/android/bitmap/DecodeTask$Request;IIIILcom/android/bitmap/DecodeTask$BitmapView;Lcom/android/bitmap/BitmapCache;)V
    .locals 1
    .parameter "key"
    .parameter "w"
    .parameter "h"
    .parameter "bufferW"
    .parameter "bufferH"
    .parameter "view"
    .parameter "cache"

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 38
    #p0=(Reference);
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    .line 40
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    .line 78
    iput-object p1, p0, Lcom/android/bitmap/DecodeTask;->mKey:Lcom/android/bitmap/DecodeTask$Request;

    .line 79
    iput p2, p0, Lcom/android/bitmap/DecodeTask;->mDestW:I

    .line 80
    iput p3, p0, Lcom/android/bitmap/DecodeTask;->mDestH:I

    .line 81
    iput p4, p0, Lcom/android/bitmap/DecodeTask;->mDestBufferW:I

    .line 82
    iput p5, p0, Lcom/android/bitmap/DecodeTask;->mDestBufferH:I

    .line 83
    iput-object p6, p0, Lcom/android/bitmap/DecodeTask;->mView:Lcom/android/bitmap/DecodeTask$BitmapView;

    .line 84
    iput-object p7, p0, Lcom/android/bitmap/DecodeTask;->mCache:Lcom/android/bitmap/BitmapCache;

    .line 85
    return-void
.end method

.method private static calculateSampleSize(IIII)I
    .locals 11
    .parameter "srcW"
    .parameter "srcH"
    .parameter "destW"
    .parameter "destH"

    .prologue
    const-wide/high16 v9, 0x4000

    .line 412
    #v9=(LongLo);v10=(LongHi);
    int-to-float v3, p0

    #v3=(Float);
    int-to-float v4, p2

    #v4=(Float);
    div-float/2addr v3, v4

    int-to-float v4, p1

    int-to-float v5, p3

    #v5=(Float);
    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 415
    .local v2, sz:F
    #v2=(Float);
    const/4 v1, 0x1

    .line 418
    .local v1, stricter:Z
    #v1=(One);
    const-wide/high16 v3, 0x3fe0

    #v3=(LongLo);v4=(LongHi);
    float-to-double v5, v2

    #v5=(DoubleLo);v6=(DoubleHi);
    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    #v7=(DoubleLo);v8=(DoubleHi);
    div-double/2addr v5, v7

    add-double/2addr v3, v5

    #v3=(DoubleLo);v4=(DoubleHi);
    double-to-int v3, v3

    #v3=(Integer);
    int-to-double v3, v3

    #v3=(DoubleLo);
    invoke-static {v9, v10, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-int v0, v3

    .line 422
    .local v0, result:I
    #v0=(Integer);
    const/4 v3, 0x1

    #v3=(One);
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    #v3=(Integer);
    return v3
.end method

.method private decode(Landroid/content/res/AssetFileDescriptor;Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "fd"
    .parameter "in"

    .prologue
    const/4 v3, 0x0

    .line 401
    #v3=(Null);
    if-eqz p1, :cond_0

    .line 402
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    #v2=(Reference);
    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 406
    .local v0, result:Landroid/graphics/Bitmap;
    :goto_0
    #v0=(Reference);v2=(Conflicted);
    return-object v0

    .line 404
    .end local v0           #result:Landroid/graphics/Bitmap;
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);
    iget-object v1, p0, Lcom/android/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    #v1=(Reference);
    invoke-static {p2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0       #result:Landroid/graphics/Bitmap;
    #v0=(Reference);
    goto :goto_0
.end method

.method private decodeCropped(Landroid/content/res/AssetFileDescriptor;Ljava/io/InputStream;ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 15
    .parameter "fd"
    .parameter "in"
    .parameter "orientation"
    .parameter "outSrcRect"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 336
    if-eqz p1, :cond_0

    .line 337
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    #v4=(Reference);
    const/4 v5, 0x1

    #v5=(One);
    invoke-static {v4, v5}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v12

    .line 341
    .local v12, brd:Landroid/graphics/BitmapRegionDecoder;
    :goto_0
    #v0=(Conflicted);v4=(Conflicted);v5=(Conflicted);v12=(Reference);
    invoke-virtual {p0}, Lcom/android/bitmap/DecodeTask;->isCancelled()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_1

    .line 342
    invoke-virtual {v12}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 343
    const/4 v14, 0x0

    .line 373
    :goto_1
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v13=(Conflicted);v14=(Reference);
    return-object v14

    .line 339
    .end local v12           #brd:Landroid/graphics/BitmapRegionDecoder;
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);
    const/4 v4, 0x1

    #v4=(One);
    move-object/from16 v0, p2

    #v0=(Reference);
    invoke-static {v0, v4}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v12

    .restart local v12       #brd:Landroid/graphics/BitmapRegionDecoder;
    #v12=(Reference);
    goto :goto_0

    .line 349
    :cond_1
    #v0=(Conflicted);v4=(Boolean);v5=(Conflicted);
    if-eqz p3, :cond_2

    const/16 v4, 0xb4

    #v4=(PosShort);
    move/from16 v0, p3

    #v0=(Integer);
    if-ne v0, v4, :cond_3

    :cond_2
    #v0=(Conflicted);
    const/4 v13, 0x1

    .line 350
    .local v13, isNotRotatedOr180:Z
    :goto_2
    #v13=(Boolean);
    if-eqz v13, :cond_4

    .line 351
    iget-object v4, p0, Lcom/android/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    #v4=(Reference);
    iget v2, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 352
    .local v2, srcW:I
    #v2=(Integer);
    iget-object v4, p0, Lcom/android/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    iget v3, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 360
    .local v3, srcH:I
    :goto_3
    #v3=(Integer);
    iget v4, p0, Lcom/android/bitmap/DecodeTask;->mDestW:I

    #v4=(Integer);
    iget v5, p0, Lcom/android/bitmap/DecodeTask;->mDestH:I

    #v5=(Integer);
    iget v6, p0, Lcom/android/bitmap/DecodeTask;->mDestH:I

    #v6=(Integer);
    iget-object v7, p0, Lcom/android/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    #v7=(Reference);
    iget v7, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    #v7=(Integer);
    const v8, 0x3eaaaaab

    #v8=(Integer);
    const/4 v9, 0x1

    #v9=(One);
    const/high16 v10, 0x3f80

    #v10=(Integer);
    move-object/from16 v11, p4

    #v11=(Reference);
    invoke-static/range {v2 .. v11}, Lcom/android/bitmap/BitmapUtils;->calculateCroppedSrcRect(IIIIIIFZFLandroid/graphics/Rect;)V

    .line 369
    new-instance v4, Landroid/graphics/Rect;

    #v4=(UninitRef);
    const/4 v5, 0x0

    #v5=(Null);
    const/4 v6, 0x0

    #v6=(Null);
    invoke-direct {v4, v5, v6, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    #v4=(Reference);
    move/from16 v0, p3

    #v0=(Integer);
    move-object/from16 v1, p4

    #v1=(Reference);
    invoke-static {v0, v4, v1}, Lcom/android/mail/utils/RectUtils;->rotateRectForOrientation(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 371
    iget-object v4, p0, Lcom/android/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v0, p4

    #v0=(Reference);
    invoke-virtual {v12, v0, v4}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 372
    .local v14, result:Landroid/graphics/Bitmap;
    #v14=(Reference);
    invoke-virtual {v12}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    goto :goto_1

    .line 349
    .end local v2           #srcW:I
    .end local v3           #srcH:I
    .end local v13           #isNotRotatedOr180:Z
    .end local v14           #result:Landroid/graphics/Bitmap;
    :cond_3
    #v0=(Integer);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(PosShort);v5=(Conflicted);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v13=(Uninit);v14=(Uninit);
    const/4 v13, 0x0

    #v13=(Null);
    goto :goto_2

    .line 354
    .restart local v13       #isNotRotatedOr180:Z
    :cond_4
    #v0=(Conflicted);v13=(Boolean);
    iget-object v4, p0, Lcom/android/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    #v4=(Reference);
    iget v2, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 355
    .restart local v2       #srcW:I
    #v2=(Integer);
    iget-object v4, p0, Lcom/android/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    iget v3, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .restart local v3       #srcH:I
    #v3=(Integer);
    goto :goto_3
.end method

.method private reset(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 383
    const-string v0, "create stream"

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/bitmap/Trace;->beginSection(Ljava/lang/String;)V

    .line 384
    if-nez p1, :cond_0

    .line 385
    iget-object v0, p0, Lcom/android/bitmap/DecodeTask;->mKey:Lcom/android/bitmap/DecodeTask$Request;

    invoke-interface {v0}, Lcom/android/bitmap/DecodeTask$Request;->createInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 395
    :goto_0
    #v0=(Conflicted);
    invoke-static {}, Lcom/android/bitmap/Trace;->endSection()V

    .line 396
    return-object p1

    .line 386
    :cond_0
    #v0=(Reference);
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_1

    .line 387
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    goto :goto_0

    .line 390
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    :goto_1
    #v0=(Conflicted);
    iget-object v0, p0, Lcom/android/bitmap/DecodeTask;->mKey:Lcom/android/bitmap/DecodeTask$Request;

    #v0=(Reference);
    invoke-interface {v0}, Lcom/android/bitmap/DecodeTask$Request;->createInputStream()Ljava/io/InputStream;

    move-result-object p1

    goto :goto_0

    .line 391
    :catch_0
    #v0=(Boolean);
    move-exception v0

    #v0=(Reference);
    goto :goto_1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 426
    const/4 v0, 0x1

    #v0=(One);
    invoke-virtual {p0, v0}, Lcom/android/bitmap/DecodeTask;->cancel(Z)Z

    .line 427
    iget-object v0, p0, Lcom/android/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/graphics/BitmapFactory$Options;->requestCancelDecode()V

    .line 428
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/bitmap/ReusableBitmap;
    .locals 22
    .parameter "params"

    .prologue
    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/android/bitmap/DecodeTask;->isCancelled()Z

    move-result v18

    #v18=(Boolean);
    if-eqz v18, :cond_1

    .line 90
    const/4 v13, 0x0

    .line 330
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Reference);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);v20=(Conflicted);v21=(Conflicted);
    return-object v13

    .line 94
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Uninit);v18=(Boolean);v19=(Uninit);v20=(Uninit);v21=(Uninit);
    const/16 v18, 0x0

    #v18=(Null);
    move/from16 v0, v18

    #v0=(Null);
    new-array v0, v0, [Ljava/lang/Void;

    #v0=(Reference);
    move-object/from16 v18, v0

    #v18=(Reference);
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/android/bitmap/DecodeTask;->publishProgress([Ljava/lang/Object;)V

    .line 96
    const/4 v13, 0x0

    .line 97
    .local v13, result:Lcom/android/bitmap/ReusableBitmap;
    #v13=(Null);
    const/4 v7, 0x0

    .line 98
    .local v7, fd:Landroid/content/res/AssetFileDescriptor;
    #v7=(Null);
    const/4 v8, 0x0

    .line 100
    .local v8, in:Ljava/io/InputStream;
    :try_start_0
    #v8=(Null);
    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    #v18=(Integer);
    const/16 v19, 0x10

    #v19=(PosByte);
    move/from16 v0, v18

    #v0=(Integer);
    move/from16 v1, v19

    #v1=(PosByte);
    if-lt v0, v1, :cond_5

    const/4 v9, 0x1

    .line 103
    .local v9, isJellyBeanOrAbove:Z
    :goto_1
    #v9=(Boolean);
    if-eqz v9, :cond_7

    .line 104
    const-string v18, "poll for reusable bitmap"

    #v18=(Reference);
    invoke-static/range {v18 .. v18}, Lcom/android/bitmap/Trace;->beginSection(Ljava/lang/String;)V

    .line 105
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mCache:Lcom/android/bitmap/BitmapCache;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/bitmap/BitmapCache;->poll()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/bitmap/ReusableBitmap;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    #v1=(Reference);
    iput-object v0, v1, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    .line 106
    invoke-static {}, Lcom/android/bitmap/Trace;->endSection()V

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/android/bitmap/DecodeTask;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v18

    #v18=(Boolean);
    if-eqz v18, :cond_7

    .line 109
    const/16 v18, 0x0

    .line 307
    #v18=(Null);
    if-eqz v7, :cond_2

    .line 309
    :try_start_1
    throw v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 313
    :cond_2
    :goto_2
    #v19=(Conflicted);
    if-eqz v8, :cond_3

    .line 315
    :try_start_2
    throw v8
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 319
    :cond_3
    :goto_3
    if-eqz v13, :cond_6

    .line 320
    throw v13

    .line 321
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);v6=(Unknown);v7=(Unknown);v8=(Unknown);v9=(Unknown);v10=(Unknown);v11=(Unknown);v12=(Unknown);v13=(Unknown);v14=(Unknown);v15=(Unknown);v16=(Unknown);v17=(Unknown);v18=(Unknown);v19=(Unknown);v20=(Unknown);v21=(Unknown);p0=(Unknown);p1=(Unknown);
    move-object/from16 v0, p0

    throw v0

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    throw v0

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v13}, Lcom/android/bitmap/BitmapCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_4
    #v0=(Reference);v1=(Reference);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Null);v8=(Null);v9=(Boolean);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Null);v14=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Uninit);v18=(Null);v19=(Reference);v20=(Conflicted);v21=(Uninit);p0=(Reference);p1=(Reference);
    move-object/from16 v13, v18

    .line 327
    goto :goto_0

    .line 100
    .end local v9           #isJellyBeanOrAbove:Z
    :cond_5
    #v0=(Integer);v1=(PosByte);v9=(Uninit);v18=(Integer);v19=(PosByte);v20=(Uninit);
    const/4 v9, 0x0

    #v9=(Null);
    goto :goto_1

    .line 324
    .restart local v9       #isJellyBeanOrAbove:Z
    :cond_6
    #v0=(Reference);v1=(Reference);v9=(Boolean);v18=(Null);v19=(Conflicted);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    move-object/from16 v19, v0

    #v19=(Reference);
    if-eqz v19, :cond_4

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mCache:Lcom/android/bitmap/BitmapCache;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    move-object/from16 v20, v0

    #v20=(Reference);
    invoke-interface/range {v19 .. v20}, Lcom/android/bitmap/BitmapCache;->offer(Ljava/lang/Object;)V

    goto :goto_4

    .line 113
    :cond_7
    :try_start_3
    #v0=(Conflicted);v1=(Conflicted);v18=(Integer);v19=(PosByte);v20=(Uninit);
    const-string v18, "create fd and stream"

    #v18=(Reference);
    invoke-static/range {v18 .. v18}, Lcom/android/bitmap/Trace;->beginSection(Ljava/lang/String;)V

    .line 114
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mKey:Lcom/android/bitmap/DecodeTask$Request;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/bitmap/DecodeTask$Request;->createFd()Landroid/content/res/AssetFileDescriptor;

    move-result-object v7

    .line 115
    #v7=(Reference);
    invoke-static {}, Lcom/android/bitmap/Trace;->endSection()V

    .line 116
    if-nez v7, :cond_c

    .line 117
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/bitmap/DecodeTask;->reset(Ljava/io/InputStream;)Ljava/io/InputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v8

    .line 118
    #v8=(Reference);
    if-nez v8, :cond_c

    .line 119
    const/16 v18, 0x0

    .line 307
    #v18=(Null);
    if-eqz v7, :cond_8

    .line 309
    :try_start_4
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 313
    :cond_8
    :goto_5
    #v19=(Conflicted);
    if-eqz v8, :cond_9

    .line 315
    :try_start_5
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 319
    :cond_9
    :goto_6
    if-eqz v13, :cond_b

    .line 320
    throw v13

    .line 321
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);v6=(Unknown);v7=(Unknown);v8=(Unknown);v9=(Unknown);v10=(Unknown);v11=(Unknown);v12=(Unknown);v13=(Unknown);v14=(Unknown);v15=(Unknown);v16=(Unknown);v17=(Unknown);v18=(Unknown);v19=(Unknown);v20=(Unknown);v21=(Unknown);p0=(Unknown);p1=(Unknown);
    move-object/from16 v0, p0

    throw v0

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    throw v0

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v13}, Lcom/android/bitmap/BitmapCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    :goto_7
    #v0=(Reference);v1=(Conflicted);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Reference);v8=(Reference);v9=(Boolean);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Null);v14=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Uninit);v18=(Null);v19=(Reference);v20=(Conflicted);v21=(Uninit);p0=(Reference);p1=(Reference);
    move-object/from16 v13, v18

    .line 327
    goto/16 :goto_0

    .line 324
    :cond_b
    #v19=(Conflicted);v20=(Uninit);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    move-object/from16 v19, v0

    #v19=(Reference);
    if-eqz v19, :cond_a

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mCache:Lcom/android/bitmap/BitmapCache;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    move-object/from16 v20, v0

    #v20=(Reference);
    invoke-interface/range {v19 .. v20}, Lcom/android/bitmap/BitmapCache;->offer(Ljava/lang/Object;)V

    goto :goto_7

    .line 123
    :cond_c
    :try_start_6
    #v18=(Reference);v19=(PosByte);v20=(Uninit);
    const-string v18, "get bytesize"

    invoke-static/range {v18 .. v18}, Lcom/android/bitmap/Trace;->beginSection(Ljava/lang/String;)V

    .line 125
    if-eqz v7, :cond_14

    .line 126
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v3

    .line 130
    .local v3, byteSize:J
    :goto_8
    #v3=(LongLo);v4=(LongHi);
    invoke-static {}, Lcom/android/bitmap/Trace;->endSection()V

    .line 132
    const-string v18, "get orientation"

    invoke-static/range {v18 .. v18}, Lcom/android/bitmap/Trace;->beginSection(Ljava/lang/String;)V

    .line 133
    if-eqz v7, :cond_d

    .line 135
    const-string v18, "create fd and stream"

    invoke-static/range {v18 .. v18}, Lcom/android/bitmap/Trace;->beginSection(Ljava/lang/String;)V

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mKey:Lcom/android/bitmap/DecodeTask$Request;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/bitmap/DecodeTask$Request;->createFd()Landroid/content/res/AssetFileDescriptor;

    move-result-object v12

    .line 137
    .local v12, orientationFd:Landroid/content/res/AssetFileDescriptor;
    #v12=(Reference);
    invoke-virtual {v12}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v8

    .line 138
    invoke-static {}, Lcom/android/bitmap/Trace;->endSection()V

    .line 140
    .end local v12           #orientationFd:Landroid/content/res/AssetFileDescriptor;
    :cond_d
    #v12=(Conflicted);
    invoke-static {v8, v3, v4}, Lcom/android/ex/photo/util/Exif;->getOrientation(Ljava/io/InputStream;J)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-result v11

    .line 141
    .local v11, orientation:I
    #v11=(Integer);
    if-eqz v7, :cond_e

    .line 144
    :try_start_7
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 148
    :cond_e
    :goto_9
    if-eqz v11, :cond_f

    const/16 v18, 0xb4

    #v18=(PosShort);
    move/from16 v0, v18

    #v0=(PosShort);
    if-ne v11, v0, :cond_15

    :cond_f
    #v0=(Conflicted);v18=(Conflicted);
    const/4 v10, 0x1

    .line 149
    .local v10, isNotRotatedOr180:Z
    :goto_a
    :try_start_8
    #v10=(Boolean);
    invoke-static {}, Lcom/android/bitmap/Trace;->endSection()V

    .line 151
    if-eqz v11, :cond_10

    .line 154
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    move-object/from16 v18, v0

    #v18=(Reference);
    if-eqz v18, :cond_10

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mCache:Lcom/android/bitmap/BitmapCache;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    move-object/from16 v19, v0

    #v19=(Reference);
    invoke-interface/range {v18 .. v19}, Lcom/android/bitmap/BitmapCache;->offer(Ljava/lang/Object;)V

    .line 156
    const/16 v18, 0x0

    #v18=(Null);
    move-object/from16 v0, v18

    #v0=(Null);
    move-object/from16 v1, p0

    #v1=(Reference);
    iput-object v0, v1, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    .line 157
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v18, v0

    #v18=(Reference);
    const/16 v19, 0x0

    #v19=(Null);
    move-object/from16 v0, v19

    #v0=(Null);
    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 161
    :cond_10
    #v0=(Conflicted);v1=(Conflicted);v18=(Conflicted);v19=(PosByte);
    invoke-virtual/range {p0 .. p0}, Lcom/android/bitmap/DecodeTask;->isCancelled()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    move-result v18

    #v18=(Boolean);
    if-eqz v18, :cond_17

    .line 162
    const/16 v18, 0x0

    .line 307
    #v18=(Null);
    if-eqz v7, :cond_11

    .line 309
    :try_start_9
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 313
    :cond_11
    :goto_b
    #v19=(Conflicted);
    if-eqz v8, :cond_12

    .line 315
    :try_start_a
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 319
    :cond_12
    :goto_c
    if-eqz v13, :cond_16

    .line 320
    throw v13

    .line 321
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);v6=(Unknown);v7=(Unknown);v8=(Unknown);v9=(Unknown);v10=(Unknown);v11=(Unknown);v12=(Unknown);v13=(Unknown);v14=(Unknown);v15=(Unknown);v16=(Unknown);v17=(Unknown);v18=(Unknown);v19=(Unknown);v20=(Unknown);v21=(Unknown);p0=(Unknown);p1=(Unknown);
    move-object/from16 v0, p0

    throw v0

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    throw v0

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v13}, Lcom/android/bitmap/BitmapCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    :goto_d
    #v0=(Reference);v1=(Conflicted);v2=(Uninit);v3=(LongLo);v4=(LongHi);v5=(Uninit);v6=(Uninit);v7=(Reference);v8=(Reference);v9=(Boolean);v10=(Boolean);v11=(Integer);v12=(Conflicted);v13=(Null);v14=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Uninit);v18=(Null);v19=(Reference);v20=(Conflicted);v21=(Uninit);p0=(Reference);p1=(Reference);
    move-object/from16 v13, v18

    .line 327
    goto/16 :goto_0

    .line 128
    .end local v3           #byteSize:J
    .end local v10           #isNotRotatedOr180:Z
    .end local v11           #orientation:I
    :cond_14
    #v3=(Uninit);v4=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v18=(Reference);v19=(PosByte);v20=(Uninit);
    const-wide/16 v3, -0x1

    .restart local v3       #byteSize:J
    #v3=(LongLo);v4=(LongHi);
    goto/16 :goto_8

    .line 148
    .restart local v11       #orientation:I
    :cond_15
    #v0=(PosShort);v11=(Integer);v12=(Conflicted);v18=(PosShort);
    const/4 v10, 0x0

    #v10=(Null);
    goto :goto_a

    .line 324
    .restart local v10       #isNotRotatedOr180:Z
    :cond_16
    #v0=(Conflicted);v10=(Boolean);v18=(Null);v19=(Conflicted);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    move-object/from16 v19, v0

    #v19=(Reference);
    if-eqz v19, :cond_13

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mCache:Lcom/android/bitmap/BitmapCache;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    move-object/from16 v20, v0

    #v20=(Reference);
    invoke-interface/range {v19 .. v20}, Lcom/android/bitmap/BitmapCache;->offer(Ljava/lang/Object;)V

    goto :goto_d

    .line 165
    :cond_17
    #v0=(Conflicted);v18=(Boolean);v19=(PosByte);v20=(Uninit);
    if-nez v7, :cond_1c

    .line 166
    :try_start_b
    move-object/from16 v0, p0

    #v0=(Reference);
    invoke-direct {v0, v8}, Lcom/android/bitmap/DecodeTask;->reset(Ljava/io/InputStream;)Ljava/io/InputStream;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    move-result-object v8

    .line 167
    if-nez v8, :cond_1c

    .line 168
    const/16 v18, 0x0

    .line 307
    #v18=(Null);
    if-eqz v7, :cond_18

    .line 309
    :try_start_c
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    .line 313
    :cond_18
    :goto_e
    #v19=(Conflicted);
    if-eqz v8, :cond_19

    .line 315
    :try_start_d
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    .line 319
    :cond_19
    :goto_f
    if-eqz v13, :cond_1b

    .line 320
    throw v13

    .line 321
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);v6=(Unknown);v7=(Unknown);v8=(Unknown);v9=(Unknown);v10=(Unknown);v11=(Unknown);v12=(Unknown);v13=(Unknown);v14=(Unknown);v15=(Unknown);v16=(Unknown);v17=(Unknown);v18=(Unknown);v19=(Unknown);v20=(Unknown);v21=(Unknown);p0=(Unknown);p1=(Unknown);
    move-object/from16 v0, p0

    throw v0

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    throw v0

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v13}, Lcom/android/bitmap/BitmapCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    :goto_10
    #v0=(Reference);v1=(Conflicted);v2=(Uninit);v3=(LongLo);v4=(LongHi);v5=(Uninit);v6=(Uninit);v7=(Reference);v8=(Reference);v9=(Boolean);v10=(Boolean);v11=(Integer);v12=(Conflicted);v13=(Null);v14=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Uninit);v18=(Null);v19=(Reference);v20=(Conflicted);v21=(Uninit);p0=(Reference);p1=(Reference);
    move-object/from16 v13, v18

    .line 327
    goto/16 :goto_0

    .line 324
    :cond_1b
    #v19=(Conflicted);v20=(Uninit);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    move-object/from16 v19, v0

    #v19=(Reference);
    if-eqz v19, :cond_1a

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mCache:Lcom/android/bitmap/BitmapCache;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    move-object/from16 v20, v0

    #v20=(Reference);
    invoke-interface/range {v19 .. v20}, Lcom/android/bitmap/BitmapCache;->offer(Ljava/lang/Object;)V

    goto :goto_10

    .line 172
    :cond_1c
    :try_start_e
    #v0=(Conflicted);v18=(Boolean);v19=(PosByte);v20=(Uninit);
    const-string v18, "decodeBounds"

    #v18=(Reference);
    invoke-static/range {v18 .. v18}, Lcom/android/bitmap/Trace;->beginSection(Ljava/lang/String;)V

    .line 173
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    #v19=(One);
    move/from16 v0, v19

    #v0=(One);
    move-object/from16 v1, v18

    #v1=(Reference);
    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 174
    if-eqz v7, :cond_20

    .line 175
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v18

    const/16 v19, 0x0

    #v19=(Null);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v20, v0

    #v20=(Reference);
    invoke-static/range {v18 .. v20}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 179
    :goto_11
    #v19=(Reference);v20=(Conflicted);
    invoke-static {}, Lcom/android/bitmap/Trace;->endSection()V

    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/android/bitmap/DecodeTask;->isCancelled()Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    move-result v18

    #v18=(Boolean);
    if-eqz v18, :cond_24

    .line 182
    const/16 v18, 0x0

    .line 307
    #v18=(Null);
    if-eqz v7, :cond_1d

    .line 309
    :try_start_f
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_c

    .line 313
    :cond_1d
    :goto_12
    if-eqz v8, :cond_1e

    .line 315
    :try_start_10
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_d

    .line 319
    :cond_1e
    :goto_13
    if-eqz v13, :cond_23

    .line 320
    throw v13

    .line 321
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);v6=(Unknown);v7=(Unknown);v8=(Unknown);v9=(Unknown);v10=(Unknown);v11=(Unknown);v12=(Unknown);v13=(Unknown);v14=(Unknown);v15=(Unknown);v16=(Unknown);v17=(Unknown);v18=(Unknown);v19=(Unknown);v20=(Unknown);v21=(Unknown);p0=(Unknown);p1=(Unknown);
    move-object/from16 v0, p0

    throw v0

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    throw v0

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v13}, Lcom/android/bitmap/BitmapCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    :goto_14
    #v0=(Reference);v1=(Reference);v2=(Uninit);v3=(LongLo);v4=(LongHi);v5=(Uninit);v6=(Uninit);v7=(Reference);v8=(Reference);v9=(Boolean);v10=(Boolean);v11=(Integer);v12=(Conflicted);v13=(Null);v14=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Uninit);v18=(Null);v19=(Reference);v20=(Conflicted);v21=(Uninit);p0=(Reference);p1=(Reference);
    move-object/from16 v13, v18

    .line 327
    goto/16 :goto_0

    .line 177
    :cond_20
    #v0=(One);v18=(Reference);v19=(One);v20=(Uninit);
    const/16 v18, 0x0

    :try_start_11
    #v18=(Null);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v19, v0

    #v19=(Reference);
    move-object/from16 v0, v18

    #v0=(Null);
    move-object/from16 v1, v19

    invoke-static {v8, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0

    goto :goto_11

    .line 304
    .end local v3           #byteSize:J
    .end local v9           #isJellyBeanOrAbove:Z
    .end local v10           #isNotRotatedOr180:Z
    .end local v11           #orientation:I
    :catch_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v13=(Reference);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);v20=(Conflicted);v21=(Conflicted);
    move-exception v6

    .line 305
    .local v6, e:Ljava/lang/Exception;
    :goto_15
    :try_start_12
    #v6=(Reference);
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 307
    if-eqz v7, :cond_21

    .line 309
    :try_start_13
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_1c

    .line 313
    :cond_21
    :goto_16
    if-eqz v8, :cond_22

    .line 315
    :try_start_14
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_1d

    .line 319
    :cond_22
    :goto_17
    if-eqz v13, :cond_50

    .line 320
    invoke-virtual {v13}, Lcom/android/bitmap/ReusableBitmap;->acquireReference()V

    .line 321
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mCache:Lcom/android/bitmap/BitmapCache;

    move-object/from16 v18, v0

    #v18=(Reference);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mKey:Lcom/android/bitmap/DecodeTask$Request;

    move-object/from16 v19, v0

    #v19=(Reference);
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    #v1=(Reference);
    invoke-interface {v0, v1, v13}, Lcom/android/bitmap/BitmapCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 324
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v3       #byteSize:J
    .restart local v9       #isJellyBeanOrAbove:Z
    .restart local v10       #isNotRotatedOr180:Z
    .restart local v11       #orientation:I
    :cond_23
    #v2=(Uninit);v3=(LongLo);v4=(LongHi);v5=(Uninit);v6=(Uninit);v9=(Boolean);v10=(Boolean);v11=(Integer);v13=(Null);v14=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Uninit);v18=(Null);v21=(Uninit);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1f

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mCache:Lcom/android/bitmap/BitmapCache;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    move-object/from16 v20, v0

    #v20=(Reference);
    invoke-interface/range {v19 .. v20}, Lcom/android/bitmap/BitmapCache;->offer(Ljava/lang/Object;)V

    goto :goto_14

    .line 187
    :cond_24
    #v18=(Boolean);v20=(Conflicted);
    if-eqz v10, :cond_28

    .line 188
    :try_start_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v18, v0

    #v18=(Reference);
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    #v0=(Integer);
    move/from16 v17, v0

    .line 189
    .local v17, srcW:I
    #v17=(Integer);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v15, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 194
    .local v15, srcH:I
    :goto_18
    #v15=(Integer);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bitmap/DecodeTask;->mDestW:I

    #v0=(Integer);
    move/from16 v19, v0

    #v19=(Integer);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/bitmap/DecodeTask;->mDestH:I

    #v0=(Integer);
    move/from16 v20, v0

    #v20=(Integer);
    move/from16 v0, v17

    move/from16 v1, v19

    #v1=(Integer);
    move/from16 v2, v20

    #v2=(Integer);
    invoke-static {v0, v15, v1, v2}, Lcom/android/bitmap/DecodeTask;->calculateSampleSize(IIII)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    #v1=(Reference);
    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 195
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #v19=(Null);
    move/from16 v0, v19

    #v0=(Null);
    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 196
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    #v19=(One);
    move/from16 v0, v19

    #v0=(One);
    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 197
    if-eqz v9, :cond_2b

    if-nez v11, :cond_2b

    .line 198
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    move-object/from16 v18, v0

    if-nez v18, :cond_2a

    .line 201
    const-string v18, "create reusable bitmap"

    invoke-static/range {v18 .. v18}, Lcom/android/bitmap/Trace;->beginSection(Ljava/lang/String;)V

    .line 202
    new-instance v18, Lcom/android/bitmap/ReusableBitmap;

    #v18=(UninitRef);
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bitmap/DecodeTask;->mDestBufferW:I

    #v0=(Integer);
    move/from16 v19, v0

    #v19=(Integer);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Lcom/android/bitmap/DecodeTask;->mDestBufferH:I

    #v0=(Integer);
    move/from16 v20, v0

    sget-object v21, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #v21=(Reference);
    invoke-static/range {v19 .. v21}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v19

    #v19=(Reference);
    invoke-direct/range {v18 .. v19}, Lcom/android/bitmap/ReusableBitmap;-><init>(Landroid/graphics/Bitmap;)V

    #v18=(Reference);
    move-object/from16 v0, v18

    #v0=(Reference);
    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    .line 204
    invoke-static {}, Lcom/android/bitmap/Trace;->endSection()V

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/android/bitmap/DecodeTask;->isCancelled()Z
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_0

    move-result v18

    #v18=(Boolean);
    if-eqz v18, :cond_2a

    .line 207
    const/16 v18, 0x0

    .line 307
    #v18=(Null);
    if-eqz v7, :cond_25

    .line 309
    :try_start_16
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_e

    .line 313
    :cond_25
    :goto_19
    if-eqz v8, :cond_26

    .line 315
    :try_start_17
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_f

    .line 319
    :cond_26
    :goto_1a
    if-eqz v13, :cond_29

    .line 320
    throw v13

    .line 321
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);v6=(Unknown);v7=(Unknown);v8=(Unknown);v9=(Unknown);v10=(Unknown);v11=(Unknown);v12=(Unknown);v13=(Unknown);v14=(Unknown);v15=(Unknown);v16=(Unknown);v17=(Unknown);v18=(Unknown);v19=(Unknown);v20=(Unknown);v21=(Unknown);p0=(Unknown);p1=(Unknown);
    move-object/from16 v0, p0

    throw v0

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    throw v0

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v13}, Lcom/android/bitmap/BitmapCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    :goto_1b
    #v0=(Reference);v1=(Reference);v2=(Integer);v3=(LongLo);v4=(LongHi);v5=(Uninit);v6=(Uninit);v7=(Reference);v8=(Reference);v9=(Boolean);v10=(Boolean);v11=(Integer);v12=(Conflicted);v13=(Null);v14=(Uninit);v15=(Integer);v16=(Uninit);v17=(Integer);v18=(Null);v19=(Reference);v20=(Conflicted);v21=(Reference);p0=(Reference);p1=(Reference);
    move-object/from16 v13, v18

    .line 327
    goto/16 :goto_0

    .line 191
    .end local v15           #srcH:I
    .end local v17           #srcW:I
    :cond_28
    :try_start_18
    #v2=(Uninit);v15=(Uninit);v17=(Uninit);v18=(Boolean);v21=(Uninit);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v18, v0

    #v18=(Reference);
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    #v0=(Integer);
    move/from16 v17, v0

    .line 192
    .restart local v17       #srcW:I
    #v17=(Integer);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v15, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_0

    .restart local v15       #srcH:I
    #v15=(Integer);
    goto/16 :goto_18

    .line 324
    :cond_29
    #v2=(Integer);v18=(Null);v20=(Integer);v21=(Reference);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    move-object/from16 v19, v0

    if-eqz v19, :cond_27

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mCache:Lcom/android/bitmap/BitmapCache;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    move-object/from16 v20, v0

    #v20=(Reference);
    invoke-interface/range {v19 .. v20}, Lcom/android/bitmap/BitmapCache;->offer(Ljava/lang/Object;)V

    goto :goto_1b

    .line 217
    :cond_2a
    :try_start_19
    #v18=(Conflicted);v19=(Conflicted);v20=(Integer);v21=(Conflicted);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v18, v0

    #v18=(Reference);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    move-object/from16 v19, v0

    #v19=(Reference);
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/bitmap/ReusableBitmap;->bmp:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 220
    :cond_2b
    #v0=(Conflicted);v19=(Conflicted);
    invoke-virtual/range {p0 .. p0}, Lcom/android/bitmap/DecodeTask;->isCancelled()Z
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_0

    move-result v18

    #v18=(Boolean);
    if-eqz v18, :cond_30

    .line 221
    const/16 v18, 0x0

    .line 307
    #v18=(Null);
    if-eqz v7, :cond_2c

    .line 309
    :try_start_1a
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_10

    .line 313
    :cond_2c
    :goto_1c
    if-eqz v8, :cond_2d

    .line 315
    :try_start_1b
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_11

    .line 319
    :cond_2d
    :goto_1d
    if-eqz v13, :cond_2f

    .line 320
    throw v13

    .line 321
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);v6=(Unknown);v7=(Unknown);v8=(Unknown);v9=(Unknown);v10=(Unknown);v11=(Unknown);v12=(Unknown);v13=(Unknown);v14=(Unknown);v15=(Unknown);v16=(Unknown);v17=(Unknown);v18=(Unknown);v19=(Unknown);v20=(Unknown);v21=(Unknown);p0=(Unknown);p1=(Unknown);
    move-object/from16 v0, p0

    throw v0

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    throw v0

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v13}, Lcom/android/bitmap/BitmapCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    :goto_1e
    #v0=(Reference);v1=(Reference);v2=(Integer);v3=(LongLo);v4=(LongHi);v5=(Uninit);v6=(Uninit);v7=(Reference);v8=(Reference);v9=(Boolean);v10=(Boolean);v11=(Integer);v12=(Conflicted);v13=(Null);v14=(Uninit);v15=(Integer);v16=(Uninit);v17=(Integer);v18=(Null);v19=(Reference);v20=(Conflicted);v21=(Conflicted);p0=(Reference);p1=(Reference);
    move-object/from16 v13, v18

    .line 327
    goto/16 :goto_0

    .line 324
    :cond_2f
    #v0=(Conflicted);v19=(Conflicted);v20=(Integer);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    move-object/from16 v19, v0

    #v19=(Reference);
    if-eqz v19, :cond_2e

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mCache:Lcom/android/bitmap/BitmapCache;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    move-object/from16 v20, v0

    #v20=(Reference);
    invoke-interface/range {v19 .. v20}, Lcom/android/bitmap/BitmapCache;->offer(Ljava/lang/Object;)V

    goto :goto_1e

    .line 224
    :cond_30
    #v0=(Conflicted);v18=(Boolean);v19=(Conflicted);v20=(Integer);
    if-nez v7, :cond_35

    .line 225
    :try_start_1c
    move-object/from16 v0, p0

    #v0=(Reference);
    invoke-direct {v0, v8}, Lcom/android/bitmap/DecodeTask;->reset(Ljava/io/InputStream;)Ljava/io/InputStream;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_0

    move-result-object v8

    .line 226
    if-nez v8, :cond_35

    .line 227
    const/16 v18, 0x0

    .line 307
    #v18=(Null);
    if-eqz v7, :cond_31

    .line 309
    :try_start_1d
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_12

    .line 313
    :cond_31
    :goto_1f
    if-eqz v8, :cond_32

    .line 315
    :try_start_1e
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_13

    .line 319
    :cond_32
    :goto_20
    if-eqz v13, :cond_34

    .line 320
    throw v13

    .line 321
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);v6=(Unknown);v7=(Unknown);v8=(Unknown);v9=(Unknown);v10=(Unknown);v11=(Unknown);v12=(Unknown);v13=(Unknown);v14=(Unknown);v15=(Unknown);v16=(Unknown);v17=(Unknown);v18=(Unknown);v19=(Unknown);v20=(Unknown);v21=(Unknown);p0=(Unknown);p1=(Unknown);
    move-object/from16 v0, p0

    throw v0

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    throw v0

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v13}, Lcom/android/bitmap/BitmapCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_33
    :goto_21
    #v0=(Reference);v1=(Reference);v2=(Integer);v3=(LongLo);v4=(LongHi);v5=(Uninit);v6=(Uninit);v7=(Reference);v8=(Reference);v9=(Boolean);v10=(Boolean);v11=(Integer);v12=(Conflicted);v13=(Null);v14=(Uninit);v15=(Integer);v16=(Uninit);v17=(Integer);v18=(Null);v19=(Reference);v20=(Conflicted);v21=(Conflicted);p0=(Reference);p1=(Reference);
    move-object/from16 v13, v18

    .line 327
    goto/16 :goto_0

    .line 324
    :cond_34
    #v19=(Conflicted);v20=(Integer);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    move-object/from16 v19, v0

    #v19=(Reference);
    if-eqz v19, :cond_33

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mCache:Lcom/android/bitmap/BitmapCache;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    move-object/from16 v20, v0

    #v20=(Reference);
    invoke-interface/range {v19 .. v20}, Lcom/android/bitmap/BitmapCache;->offer(Ljava/lang/Object;)V

    goto :goto_21

    .line 231
    :cond_35
    #v0=(Conflicted);v18=(Boolean);v19=(Conflicted);v20=(Integer);
    const/4 v5, 0x0

    .line 232
    .local v5, decodeResult:Landroid/graphics/Bitmap;
    :try_start_1f
    #v5=(Null);
    new-instance v16, Landroid/graphics/Rect;

    #v16=(UninitRef);
    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_0

    .line 235
    .local v16, srcRect:Landroid/graphics/Rect;
    :try_start_20
    #v16=(Reference);
    new-instance v18, Ljava/lang/StringBuilder;

    #v18=(UninitRef);
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #v18=(Reference);
    const-string v19, "decodeCropped"

    #v19=(Reference);
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    #v0=(Integer);
    move/from16 v19, v0

    #v19=(Integer);
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/bitmap/Trace;->beginSection(Ljava/lang/String;)V

    .line 236
    move-object/from16 v0, p0

    #v0=(Reference);
    move-object/from16 v1, v16

    invoke-direct {v0, v7, v8, v11, v1}, Lcom/android/bitmap/DecodeTask;->decodeCropped(Landroid/content/res/AssetFileDescriptor;Ljava/io/InputStream;ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_1
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_1

    move-result-object v5

    .line 241
    :try_start_21
    #v5=(Reference);
    invoke-static {}, Lcom/android/bitmap/Trace;->endSection()V

    .line 244
    :goto_22
    #v0=(Conflicted);v6=(Conflicted);v18=(Conflicted);v19=(Conflicted);
    invoke-virtual/range {p0 .. p0}, Lcom/android/bitmap/DecodeTask;->isCancelled()Z
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_0

    move-result v18

    #v18=(Boolean);
    if-eqz v18, :cond_3d

    .line 245
    const/16 v18, 0x0

    .line 307
    #v18=(Null);
    if-eqz v7, :cond_36

    .line 309
    :try_start_22
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_14

    .line 313
    :cond_36
    :goto_23
    if-eqz v8, :cond_37

    .line 315
    :try_start_23
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_15

    .line 319
    :cond_37
    :goto_24
    if-eqz v13, :cond_3c

    .line 320
    throw v13

    .line 321
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);v6=(Unknown);v7=(Unknown);v8=(Unknown);v9=(Unknown);v10=(Unknown);v11=(Unknown);v12=(Unknown);v13=(Unknown);v14=(Unknown);v15=(Unknown);v16=(Unknown);v17=(Unknown);v18=(Unknown);v19=(Unknown);v20=(Unknown);v21=(Unknown);p0=(Unknown);p1=(Unknown);
    move-object/from16 v0, p0

    throw v0

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    throw v0

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v13}, Lcom/android/bitmap/BitmapCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_38
    :goto_25
    #v0=(Reference);v1=(Reference);v2=(Integer);v3=(LongLo);v4=(LongHi);v5=(Reference);v6=(Conflicted);v7=(Reference);v8=(Reference);v9=(Boolean);v10=(Boolean);v11=(Integer);v12=(Conflicted);v13=(Null);v14=(Uninit);v15=(Integer);v16=(Reference);v17=(Integer);v18=(Null);v19=(Reference);v20=(Conflicted);v21=(Conflicted);p0=(Reference);p1=(Reference);
    move-object/from16 v13, v18

    .line 327
    goto/16 :goto_0

    .line 237
    :catch_1
    #v0=(Conflicted);v5=(Null);v6=(Uninit);v18=(Conflicted);v19=(Conflicted);v20=(Integer);
    move-exception v6

    .line 239
    .local v6, e:Ljava/io/IOException;
    :try_start_24
    #v6=(Reference);
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_1

    .line 241
    :try_start_25
    invoke-static {}, Lcom/android/bitmap/Trace;->endSection()V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_0

    goto :goto_22

    .line 307
    .end local v3           #byteSize:J
    .end local v5           #decodeResult:Landroid/graphics/Bitmap;
    .end local v6           #e:Ljava/io/IOException;
    .end local v9           #isJellyBeanOrAbove:Z
    .end local v10           #isNotRotatedOr180:Z
    .end local v11           #orientation:I
    .end local v15           #srcH:I
    .end local v16           #srcRect:Landroid/graphics/Rect;
    .end local v17           #srcW:I
    :catchall_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v13=(Reference);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);v20=(Conflicted);
    move-exception v18

    :goto_26
    #v18=(Reference);
    if-eqz v7, :cond_39

    .line 309
    :try_start_26
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_1e

    .line 313
    :cond_39
    :goto_27
    if-eqz v8, :cond_3a

    .line 315
    :try_start_27
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_1f

    .line 319
    :cond_3a
    :goto_28
    if-eqz v13, :cond_51

    .line 320
    invoke-virtual {v13}, Lcom/android/bitmap/ReusableBitmap;->acquireReference()V

    .line 321
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mCache:Lcom/android/bitmap/BitmapCache;

    move-object/from16 v19, v0

    #v19=(Reference);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mKey:Lcom/android/bitmap/DecodeTask$Request;

    move-object/from16 v20, v0

    #v20=(Reference);
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    #v1=(Reference);
    invoke-interface {v0, v1, v13}, Lcom/android/bitmap/BitmapCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    :cond_3b
    :goto_29
    #v1=(Conflicted);v20=(Conflicted);
    throw v18

    .line 241
    .restart local v3       #byteSize:J
    .restart local v5       #decodeResult:Landroid/graphics/Bitmap;
    .restart local v9       #isJellyBeanOrAbove:Z
    .restart local v10       #isNotRotatedOr180:Z
    .restart local v11       #orientation:I
    .restart local v15       #srcH:I
    .restart local v16       #srcRect:Landroid/graphics/Rect;
    .restart local v17       #srcW:I
    :catchall_1
    #v0=(Conflicted);v1=(Reference);v2=(Integer);v3=(LongLo);v4=(LongHi);v5=(Null);v9=(Boolean);v10=(Boolean);v11=(Integer);v13=(Null);v14=(Uninit);v15=(Integer);v16=(Reference);v17=(Integer);v18=(Conflicted);v19=(Conflicted);v20=(Integer);
    move-exception v18

    :try_start_28
    #v18=(Reference);
    invoke-static {}, Lcom/android/bitmap/Trace;->endSection()V

    throw v18
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_0

    .line 324
    :cond_3c
    #v5=(Reference);v18=(Null);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    move-object/from16 v19, v0

    #v19=(Reference);
    if-eqz v19, :cond_38

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mCache:Lcom/android/bitmap/BitmapCache;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    move-object/from16 v20, v0

    #v20=(Reference);
    invoke-interface/range {v19 .. v20}, Lcom/android/bitmap/BitmapCache;->offer(Ljava/lang/Object;)V

    goto :goto_25

    .line 249
    :cond_3d
    #v0=(Conflicted);v18=(Boolean);v19=(Conflicted);v20=(Integer);
    if-nez v5, :cond_44

    :try_start_29
    invoke-virtual/range {p0 .. p0}, Lcom/android/bitmap/DecodeTask;->isCancelled()Z
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_0

    move-result v18

    if-nez v18, :cond_44

    .line 251
    :try_start_2a
    new-instance v18, Ljava/lang/StringBuilder;

    #v18=(UninitRef);
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #v18=(Reference);
    const-string v19, "decode"

    #v19=(Reference);
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    #v0=(Integer);
    move/from16 v19, v0

    #v19=(Integer);
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/bitmap/Trace;->beginSection(Ljava/lang/String;)V

    .line 253
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3e

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mCache:Lcom/android/bitmap/BitmapCache;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    move-object/from16 v19, v0

    #v19=(Reference);
    invoke-interface/range {v18 .. v19}, Lcom/android/bitmap/BitmapCache;->offer(Ljava/lang/Object;)V

    .line 255
    const/16 v18, 0x0

    #v18=(Null);
    move-object/from16 v0, v18

    #v0=(Null);
    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    .line 256
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v18, v0

    #v18=(Reference);
    const/16 v19, 0x0

    #v19=(Null);
    move-object/from16 v0, v19

    #v0=(Null);
    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 258
    :cond_3e
    #v0=(Reference);v19=(Integer);
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Lcom/android/bitmap/DecodeTask;->decode(Landroid/content/res/AssetFileDescriptor;Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2a .. :try_end_2a} :catch_2

    move-result-object v5

    .line 269
    :try_start_2b
    invoke-static {}, Lcom/android/bitmap/Trace;->endSection()V

    .line 272
    :goto_2a
    #v0=(Conflicted);v1=(Conflicted);v18=(Conflicted);
    invoke-virtual/range {p0 .. p0}, Lcom/android/bitmap/DecodeTask;->isCancelled()Z
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_0

    move-result v18

    #v18=(Boolean);
    if-eqz v18, :cond_44

    .line 273
    const/16 v18, 0x0

    .line 307
    #v18=(Null);
    if-eqz v7, :cond_3f

    .line 309
    :try_start_2c
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_16

    .line 313
    :cond_3f
    :goto_2b
    #v19=(Conflicted);
    if-eqz v8, :cond_40

    .line 315
    :try_start_2d
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2d} :catch_17

    .line 319
    :cond_40
    :goto_2c
    if-eqz v13, :cond_43

    .line 320
    throw v13

    .line 321
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);v6=(Unknown);v7=(Unknown);v8=(Unknown);v9=(Unknown);v10=(Unknown);v11=(Unknown);v12=(Unknown);v13=(Unknown);v14=(Unknown);v15=(Unknown);v16=(Unknown);v17=(Unknown);v18=(Unknown);v19=(Unknown);v20=(Unknown);v21=(Unknown);p0=(Unknown);p1=(Unknown);
    move-object/from16 v0, p0

    throw v0

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    throw v0

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v13}, Lcom/android/bitmap/BitmapCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_41
    :goto_2d
    #v0=(Reference);v1=(Conflicted);v2=(Integer);v3=(LongLo);v4=(LongHi);v5=(Reference);v6=(Conflicted);v7=(Reference);v8=(Reference);v9=(Boolean);v10=(Boolean);v11=(Integer);v12=(Conflicted);v13=(Null);v14=(Uninit);v15=(Integer);v16=(Reference);v17=(Integer);v18=(Null);v19=(Reference);v20=(Conflicted);v21=(Conflicted);p0=(Reference);p1=(Reference);
    move-object/from16 v13, v18

    .line 327
    goto/16 :goto_0

    .line 259
    :catch_2
    #v0=(Conflicted);v1=(Reference);v18=(Conflicted);v19=(Conflicted);v20=(Integer);
    move-exception v6

    .line 260
    .local v6, e:Ljava/lang/IllegalArgumentException;
    :try_start_2e
    #v6=(Reference);
    sget-object v18, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #v18=(Reference);
    new-instance v19, Ljava/lang/StringBuilder;

    #v19=(UninitRef);
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #v19=(Reference);
    const-string v20, "decode failed: reason=\'"

    #v20=(Reference);
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\' ss="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    #v0=(Integer);
    move/from16 v20, v0

    #v20=(Integer);
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 263
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    #v0=(Integer);
    move/from16 v18, v0

    #v18=(Integer);
    const/16 v19, 0x1

    #v19=(One);
    move/from16 v0, v18

    move/from16 v1, v19

    #v1=(One);
    if-le v0, v1, :cond_42

    .line 265
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v18, v0

    #v18=(Reference);
    const/16 v19, 0x1

    move/from16 v0, v19

    #v0=(One);
    move-object/from16 v1, v18

    #v1=(Reference);
    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 266
    move-object/from16 v0, p0

    #v0=(Reference);
    invoke-direct {v0, v7, v8}, Lcom/android/bitmap/DecodeTask;->decode(Landroid/content/res/AssetFileDescriptor;Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_2

    move-result-object v5

    .line 269
    :cond_42
    :try_start_2f
    #v0=(Conflicted);v1=(Conflicted);v18=(Conflicted);
    invoke-static {}, Lcom/android/bitmap/Trace;->endSection()V

    goto/16 :goto_2a

    .end local v6           #e:Ljava/lang/IllegalArgumentException;
    :catchall_2
    #v6=(Conflicted);v19=(Conflicted);v20=(Conflicted);
    move-exception v18

    #v18=(Reference);
    invoke-static {}, Lcom/android/bitmap/Trace;->endSection()V

    throw v18
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_0

    .line 324
    :cond_43
    #v18=(Null);v20=(Integer);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    move-object/from16 v19, v0

    #v19=(Reference);
    if-eqz v19, :cond_41

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mCache:Lcom/android/bitmap/BitmapCache;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    move-object/from16 v20, v0

    #v20=(Reference);
    invoke-interface/range {v19 .. v20}, Lcom/android/bitmap/BitmapCache;->offer(Ljava/lang/Object;)V

    goto :goto_2d

    .line 277
    :cond_44
    #v0=(Conflicted);v18=(Boolean);v19=(Conflicted);v20=(Integer);
    if-nez v5, :cond_49

    .line 278
    const/16 v18, 0x0

    .line 307
    #v18=(Null);
    if-eqz v7, :cond_45

    .line 309
    :try_start_30
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_30} :catch_18

    .line 313
    :cond_45
    :goto_2e
    if-eqz v8, :cond_46

    .line 315
    :try_start_31
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_31} :catch_19

    .line 319
    :cond_46
    :goto_2f
    if-eqz v13, :cond_48

    .line 320
    throw v13

    .line 321
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);v6=(Unknown);v7=(Unknown);v8=(Unknown);v9=(Unknown);v10=(Unknown);v11=(Unknown);v12=(Unknown);v13=(Unknown);v14=(Unknown);v15=(Unknown);v16=(Unknown);v17=(Unknown);v18=(Unknown);v19=(Unknown);v20=(Unknown);v21=(Unknown);p0=(Unknown);p1=(Unknown);
    move-object/from16 v0, p0

    throw v0

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    throw v0

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v13}, Lcom/android/bitmap/BitmapCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_47
    :goto_30
    #v0=(Reference);v1=(Conflicted);v2=(Integer);v3=(LongLo);v4=(LongHi);v5=(Reference);v6=(Conflicted);v7=(Reference);v8=(Reference);v9=(Boolean);v10=(Boolean);v11=(Integer);v12=(Conflicted);v13=(Null);v14=(Uninit);v15=(Integer);v16=(Reference);v17=(Integer);v18=(Null);v19=(Reference);v20=(Conflicted);v21=(Conflicted);p0=(Reference);p1=(Reference);
    move-object/from16 v13, v18

    .line 327
    goto/16 :goto_0

    .line 324
    :cond_48
    #v0=(Conflicted);v19=(Conflicted);v20=(Integer);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    move-object/from16 v19, v0

    #v19=(Reference);
    if-eqz v19, :cond_47

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mCache:Lcom/android/bitmap/BitmapCache;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    move-object/from16 v20, v0

    #v20=(Reference);
    invoke-interface/range {v19 .. v20}, Lcom/android/bitmap/BitmapCache;->offer(Ljava/lang/Object;)V

    goto :goto_30

    .line 281
    :cond_49
    :try_start_32
    #v0=(Conflicted);v18=(Boolean);v19=(Conflicted);v20=(Integer);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    move-object/from16 v18, v0

    #v18=(Reference);
    if-eqz v18, :cond_4d

    .line 282
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    .line 284
    #v13=(Reference);
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v18

    #v18=(Boolean);
    if-nez v18, :cond_4c

    .line 285
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    #v0=(Integer);
    move/from16 v18, v0

    #v18=(Integer);
    move-object/from16 v0, v16

    #v0=(Reference);
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #v0=(Integer);
    move/from16 v19, v0

    #v19=(Integer);
    sub-int v18, v18, v19

    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v19, v0

    #v19=(Reference);
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    #v0=(Integer);
    move/from16 v19, v0

    #v19=(Integer);
    div-int v18, v18, v19

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/android/bitmap/ReusableBitmap;->setLogicalWidth(I)V

    .line 286
    move-object/from16 v0, v16

    #v0=(Reference);
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #v0=(Integer);
    move/from16 v18, v0

    move-object/from16 v0, v16

    #v0=(Reference);
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #v0=(Integer);
    move/from16 v19, v0

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v19, v0

    #v19=(Reference);
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    #v0=(Integer);
    move/from16 v19, v0

    #v19=(Integer);
    div-int v18, v18, v19

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/android/bitmap/ReusableBitmap;->setLogicalHeight(I)V

    .line 303
    :goto_31
    #v14=(Conflicted);v19=(Conflicted);
    invoke-virtual {v13, v11}, Lcom/android/bitmap/ReusableBitmap;->setOrientation(I)V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_0

    .line 307
    if-eqz v7, :cond_4a

    .line 309
    :try_start_33
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_33} :catch_1a

    .line 313
    :cond_4a
    :goto_32
    #v18=(Conflicted);
    if-eqz v8, :cond_4b

    .line 315
    :try_start_34
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_34} :catch_1b

    .line 319
    :cond_4b
    :goto_33
    if-eqz v13, :cond_4f

    .line 320
    invoke-virtual {v13}, Lcom/android/bitmap/ReusableBitmap;->acquireReference()V

    .line 321
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mCache:Lcom/android/bitmap/BitmapCache;

    move-object/from16 v18, v0

    #v18=(Reference);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mKey:Lcom/android/bitmap/DecodeTask$Request;

    move-object/from16 v19, v0

    #v19=(Reference);
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    #v1=(Reference);
    invoke-interface {v0, v1, v13}, Lcom/android/bitmap/BitmapCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 289
    :cond_4c
    :try_start_35
    #v1=(Conflicted);v14=(Uninit);v18=(Boolean);v19=(Conflicted);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v18, v0

    #v18=(Reference);
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    #v0=(Integer);
    move/from16 v18, v0

    #v18=(Integer);
    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/android/bitmap/ReusableBitmap;->setLogicalWidth(I)V

    .line 290
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mOpts:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v18, v0

    #v18=(Reference);
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    #v0=(Integer);
    move/from16 v18, v0

    #v18=(Integer);
    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/android/bitmap/ReusableBitmap;->setLogicalHeight(I)V

    goto :goto_31

    .line 294
    :cond_4d
    #v0=(Reference);v13=(Null);v18=(Reference);
    new-instance v14, Lcom/android/bitmap/ReusableBitmap;

    #v14=(UninitRef);
    const/16 v18, 0x0

    #v18=(Null);
    move/from16 v0, v18

    #v0=(Null);
    invoke-direct {v14, v5, v0}, Lcom/android/bitmap/ReusableBitmap;-><init>(Landroid/graphics/Bitmap;Z)V
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_0

    .line 295
    .end local v13           #result:Lcom/android/bitmap/ReusableBitmap;
    .local v14, result:Lcom/android/bitmap/ReusableBitmap;
    #v14=(Reference);
    if-eqz v10, :cond_4e

    .line 296
    :try_start_36
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    #v18=(Integer);
    move/from16 v0, v18

    #v0=(Integer);
    invoke-virtual {v14, v0}, Lcom/android/bitmap/ReusableBitmap;->setLogicalWidth(I)V

    .line 297
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/android/bitmap/ReusableBitmap;->setLogicalHeight(I)V

    move-object v13, v14

    .end local v14           #result:Lcom/android/bitmap/ReusableBitmap;
    .restart local v13       #result:Lcom/android/bitmap/ReusableBitmap;
    #v13=(Reference);
    goto :goto_31

    .line 299
    .end local v13           #result:Lcom/android/bitmap/ReusableBitmap;
    .restart local v14       #result:Lcom/android/bitmap/ReusableBitmap;
    :cond_4e
    #v0=(Null);v13=(Null);v18=(Null);
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    #v18=(Integer);
    move/from16 v0, v18

    #v0=(Integer);
    invoke-virtual {v14, v0}, Lcom/android/bitmap/ReusableBitmap;->setLogicalWidth(I)V

    .line 300
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/android/bitmap/ReusableBitmap;->setLogicalHeight(I)V
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_36} :catch_20

    move-object v13, v14

    .end local v14           #result:Lcom/android/bitmap/ReusableBitmap;
    .restart local v13       #result:Lcom/android/bitmap/ReusableBitmap;
    #v13=(Reference);
    goto :goto_31

    .line 324
    :cond_4f
    #v14=(Conflicted);v18=(Conflicted);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    move-object/from16 v18, v0

    #v18=(Reference);
    if-eqz v18, :cond_0

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mCache:Lcom/android/bitmap/BitmapCache;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    move-object/from16 v19, v0

    #v19=(Reference);
    invoke-interface/range {v18 .. v19}, Lcom/android/bitmap/BitmapCache;->offer(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 324
    .end local v3           #byteSize:J
    .end local v5           #decodeResult:Landroid/graphics/Bitmap;
    .end local v9           #isJellyBeanOrAbove:Z
    .end local v10           #isNotRotatedOr180:Z
    .end local v11           #orientation:I
    .end local v15           #srcH:I
    .end local v16           #srcRect:Landroid/graphics/Rect;
    .end local v17           #srcW:I
    .local v6, e:Ljava/lang/Exception;
    :cond_50
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Reference);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);v20=(Conflicted);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    move-object/from16 v18, v0

    #v18=(Reference);
    if-eqz v18, :cond_0

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mCache:Lcom/android/bitmap/BitmapCache;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    move-object/from16 v19, v0

    #v19=(Reference);
    invoke-interface/range {v18 .. v19}, Lcom/android/bitmap/BitmapCache;->offer(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 324
    .end local v6           #e:Ljava/lang/Exception;
    :cond_51
    #v0=(Conflicted);v6=(Conflicted);v19=(Conflicted);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    move-object/from16 v19, v0

    #v19=(Reference);
    if-eqz v19, :cond_3b

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mCache:Lcom/android/bitmap/BitmapCache;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    move-object/from16 v20, v0

    #v20=(Reference);
    invoke-interface/range {v19 .. v20}, Lcom/android/bitmap/BitmapCache;->offer(Ljava/lang/Object;)V

    goto/16 :goto_29

    .line 310
    .restart local v9       #isJellyBeanOrAbove:Z
    :catch_3
    #v1=(Reference);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Null);v8=(Null);v9=(Boolean);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Null);v14=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Uninit);v18=(Null);v19=(PosByte);v20=(Uninit);v21=(Uninit);
    move-exception v19

    #v19=(Reference);
    goto/16 :goto_2

    .line 316
    :catch_4
    #v19=(Conflicted);
    move-exception v19

    #v19=(Reference);
    goto/16 :goto_3

    .line 310
    :catch_5
    #v1=(Conflicted);v7=(Reference);v8=(Reference);v19=(PosByte);
    move-exception v19

    #v19=(Reference);
    goto/16 :goto_5

    .line 316
    :catch_6
    #v19=(Conflicted);
    move-exception v19

    #v19=(Reference);
    goto/16 :goto_6

    .line 145
    .restart local v3       #byteSize:J
    .restart local v11       #orientation:I
    :catch_7
    #v3=(LongLo);v4=(LongHi);v11=(Integer);v12=(Conflicted);v18=(Reference);v19=(PosByte);
    move-exception v18

    goto/16 :goto_9

    .line 310
    .restart local v10       #isNotRotatedOr180:Z
    :catch_8
    #v0=(Conflicted);v10=(Boolean);v18=(Null);
    move-exception v19

    #v19=(Reference);
    goto/16 :goto_b

    .line 316
    :catch_9
    #v19=(Conflicted);
    move-exception v19

    #v19=(Reference);
    goto/16 :goto_c

    .line 310
    :catch_a
    #v0=(Reference);v19=(PosByte);
    move-exception v19

    #v19=(Reference);
    goto/16 :goto_e

    .line 316
    :catch_b
    #v19=(Conflicted);
    move-exception v19

    #v19=(Reference);
    goto/16 :goto_f

    .line 310
    :catch_c
    #v1=(Reference);v20=(Conflicted);
    move-exception v19

    goto/16 :goto_12

    .line 316
    :catch_d
    move-exception v19

    goto/16 :goto_13

    .line 310
    .restart local v15       #srcH:I
    .restart local v17       #srcW:I
    :catch_e
    #v2=(Integer);v15=(Integer);v17=(Integer);v20=(Integer);v21=(Reference);
    move-exception v19

    goto/16 :goto_19

    .line 316
    :catch_f
    move-exception v19

    goto/16 :goto_1a

    .line 310
    :catch_10
    #v0=(Conflicted);v19=(Conflicted);v21=(Conflicted);
    move-exception v19

    #v19=(Reference);
    goto/16 :goto_1c

    .line 316
    :catch_11
    #v19=(Conflicted);
    move-exception v19

    #v19=(Reference);
    goto/16 :goto_1d

    .line 310
    :catch_12
    #v0=(Reference);v19=(Conflicted);
    move-exception v19

    #v19=(Reference);
    goto/16 :goto_1f

    .line 316
    :catch_13
    #v19=(Conflicted);
    move-exception v19

    #v19=(Reference);
    goto/16 :goto_20

    .line 310
    .restart local v5       #decodeResult:Landroid/graphics/Bitmap;
    .restart local v16       #srcRect:Landroid/graphics/Rect;
    :catch_14
    #v0=(Conflicted);v5=(Reference);v6=(Conflicted);v16=(Reference);v19=(Conflicted);
    move-exception v19

    #v19=(Reference);
    goto/16 :goto_23

    .line 316
    :catch_15
    #v19=(Conflicted);
    move-exception v19

    #v19=(Reference);
    goto/16 :goto_24

    .line 310
    :catch_16
    #v1=(Conflicted);v19=(Integer);
    move-exception v19

    #v19=(Reference);
    goto/16 :goto_2b

    .line 316
    :catch_17
    #v19=(Conflicted);
    move-exception v19

    #v19=(Reference);
    goto/16 :goto_2c

    .line 310
    :catch_18
    #v19=(Conflicted);
    move-exception v19

    #v19=(Reference);
    goto/16 :goto_2e

    .line 316
    :catch_19
    #v19=(Conflicted);
    move-exception v19

    #v19=(Reference);
    goto/16 :goto_2f

    .line 310
    :catch_1a
    #v0=(Integer);v13=(Reference);v14=(Conflicted);v18=(Integer);v19=(Conflicted);
    move-exception v18

    #v18=(Reference);
    goto/16 :goto_32

    .line 316
    :catch_1b
    #v18=(Conflicted);
    move-exception v18

    #v18=(Reference);
    goto/16 :goto_33

    .line 310
    .end local v3           #byteSize:J
    .end local v5           #decodeResult:Landroid/graphics/Bitmap;
    .end local v9           #isJellyBeanOrAbove:Z
    .end local v10           #isNotRotatedOr180:Z
    .end local v11           #orientation:I
    .end local v15           #srcH:I
    .end local v16           #srcRect:Landroid/graphics/Rect;
    .end local v17           #srcW:I
    .restart local v6       #e:Ljava/lang/Exception;
    :catch_1c
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Reference);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);v20=(Conflicted);
    move-exception v18

    #v18=(Reference);
    goto/16 :goto_16

    .line 316
    :catch_1d
    #v18=(Conflicted);
    move-exception v18

    #v18=(Reference);
    goto/16 :goto_17

    .line 310
    .end local v6           #e:Ljava/lang/Exception;
    :catch_1e
    #v6=(Conflicted);
    move-exception v19

    #v19=(Reference);
    goto/16 :goto_27

    .line 316
    :catch_1f
    #v19=(Conflicted);
    move-exception v19

    #v19=(Reference);
    goto/16 :goto_28

    .line 307
    .end local v13           #result:Lcom/android/bitmap/ReusableBitmap;
    .restart local v3       #byteSize:J
    .restart local v5       #decodeResult:Landroid/graphics/Bitmap;
    .restart local v9       #isJellyBeanOrAbove:Z
    .restart local v10       #isNotRotatedOr180:Z
    .restart local v11       #orientation:I
    .restart local v14       #result:Lcom/android/bitmap/ReusableBitmap;
    .restart local v15       #srcH:I
    .restart local v16       #srcRect:Landroid/graphics/Rect;
    .restart local v17       #srcW:I
    :catchall_3
    #v0=(Integer);v2=(Integer);v3=(LongLo);v4=(LongHi);v5=(Reference);v9=(Boolean);v10=(Boolean);v11=(Integer);v13=(Null);v14=(Reference);v15=(Integer);v16=(Reference);v17=(Integer);v18=(Integer);v19=(Conflicted);v20=(Integer);
    move-exception v18

    #v18=(Reference);
    move-object v13, v14

    .end local v14           #result:Lcom/android/bitmap/ReusableBitmap;
    .restart local v13       #result:Lcom/android/bitmap/ReusableBitmap;
    #v13=(Reference);
    goto/16 :goto_26

    .line 304
    .end local v13           #result:Lcom/android/bitmap/ReusableBitmap;
    .restart local v14       #result:Lcom/android/bitmap/ReusableBitmap;
    :catch_20
    #v13=(Null);v18=(Integer);
    move-exception v6

    #v6=(Reference);
    move-object v13, v14

    .end local v14           #result:Lcom/android/bitmap/ReusableBitmap;
    .restart local v13       #result:Lcom/android/bitmap/ReusableBitmap;
    #v13=(Reference);
    goto/16 :goto_15
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/bitmap/DecodeTask;->doInBackground([Ljava/lang/Void;)Lcom/android/bitmap/ReusableBitmap;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method protected onCancelled(Lcom/android/bitmap/ReusableBitmap;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/bitmap/DecodeTask;->mView:Lcom/android/bitmap/DecodeTask$BitmapView;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/bitmap/DecodeTask;->mKey:Lcom/android/bitmap/DecodeTask$Request;

    #v1=(Reference);
    invoke-interface {v0, v1}, Lcom/android/bitmap/DecodeTask$BitmapView;->onDecodeCancel(Lcom/android/bitmap/DecodeTask$Request;)V

    .line 443
    if-nez p1, :cond_1

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    invoke-virtual {p1}, Lcom/android/bitmap/ReusableBitmap;->releaseReference()V

    .line 448
    iget-object v0, p0, Lcom/android/bitmap/DecodeTask;->mInBitmap:Lcom/android/bitmap/ReusableBitmap;

    if-nez v0, :cond_0

    .line 450
    iget-object v0, p1, Lcom/android/bitmap/ReusableBitmap;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    check-cast p1, Lcom/android/bitmap/ReusableBitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/bitmap/DecodeTask;->onCancelled(Lcom/android/bitmap/ReusableBitmap;)V

    return-void
.end method

.method public onPostExecute(Lcom/android/bitmap/ReusableBitmap;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/bitmap/DecodeTask;->mView:Lcom/android/bitmap/DecodeTask$BitmapView;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/bitmap/DecodeTask;->mKey:Lcom/android/bitmap/DecodeTask$Request;

    #v1=(Reference);
    invoke-interface {v0, v1, p1}, Lcom/android/bitmap/DecodeTask$BitmapView;->onDecodeComplete(Lcom/android/bitmap/DecodeTask$Request;Lcom/android/bitmap/ReusableBitmap;)V

    .line 438
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    check-cast p1, Lcom/android/bitmap/ReusableBitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/bitmap/DecodeTask;->onPostExecute(Lcom/android/bitmap/ReusableBitmap;)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/bitmap/DecodeTask;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/bitmap/DecodeTask;->mView:Lcom/android/bitmap/DecodeTask$BitmapView;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/bitmap/DecodeTask;->mKey:Lcom/android/bitmap/DecodeTask$Request;

    #v1=(Reference);
    invoke-interface {v0, v1}, Lcom/android/bitmap/DecodeTask$BitmapView;->onDecodeBegin(Lcom/android/bitmap/DecodeTask$Request;)V

    .line 433
    return-void
.end method
