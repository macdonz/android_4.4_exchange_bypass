.class public Lcom/android/mail/photomanager/BitmapUtil;
.super Ljava/lang/Object;
.source "BitmapUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    #p0=(Reference);
    return-void
.end method

.method public static centerCrop(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "src"
    .parameter "w"
    .parameter "h"

    .prologue
    const/high16 v0, 0x3f00

    .line 93
    #v0=(Integer);
    invoke-static {p0, p1, p2, v0, v0}, Lcom/android/mail/photomanager/BitmapUtil;->crop(Landroid/graphics/Bitmap;IIFF)Landroid/graphics/Bitmap;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public static crop(Landroid/graphics/Bitmap;IIFF)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "src"
    .parameter "w"
    .parameter "h"
    .parameter "horizontalCenterPercent"
    .parameter "verticalCenterPercent"

    .prologue
    .line 129
    const/4 v0, 0x0

    #v0=(Null);
    cmpg-float v0, p3, v0

    #v0=(Byte);
    if-ltz v0, :cond_0

    const/high16 v0, 0x3f80

    #v0=(Integer);
    cmpl-float v0, p3, v0

    #v0=(Byte);
    if-gtz v0, :cond_0

    const/4 v0, 0x0

    #v0=(Null);
    cmpg-float v0, p4, v0

    #v0=(Byte);
    if-ltz v0, :cond_0

    const/high16 v0, 0x3f80

    #v0=(Integer);
    cmpl-float v0, p4, v0

    #v0=(Byte);
    if-lez v0, :cond_1

    .line 131
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #v0=(UninitRef);
    const-string v6, "horizontalCenterPercent and verticalCenterPercent must be between 0.0f and 1.0f, inclusive."

    #v6=(Reference);
    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    throw v0

    .line 135
    :cond_1
    #v0=(Byte);v6=(Uninit);
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 136
    .local v10, srcWidth:I
    #v10=(Integer);
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 139
    .local v9, srcHeight:I
    #v9=(Integer);
    if-ne p1, v10, :cond_2

    if-ne p2, v9, :cond_2

    .line 173
    .end local p0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v11=(Conflicted);
    return-object p0

    .line 143
    .restart local p0
    :cond_2
    #v0=(Byte);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v11=(Uninit);
    new-instance v5, Landroid/graphics/Matrix;

    #v5=(UninitRef);
    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 144
    .local v5, m:Landroid/graphics/Matrix;
    #v5=(Reference);
    int-to-float v0, p1

    #v0=(Float);
    int-to-float v6, v10

    #v6=(Float);
    div-float/2addr v0, v6

    int-to-float v6, p2

    int-to-float v11, v9

    #v11=(Float);
    div-float/2addr v6, v11

    invoke-static {v0, v6}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 147
    .local v8, scale:F
    #v8=(Float);
    invoke-virtual {v5, v8, v8}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 152
    int-to-float v0, p1

    div-float/2addr v0, v8

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 153
    .local v3, srcCroppedW:I
    #v3=(Integer);
    int-to-float v0, p2

    div-float/2addr v0, v8

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 154
    .local v4, srcCroppedH:I
    #v4=(Integer);
    int-to-float v0, v10

    mul-float/2addr v0, p3

    div-int/lit8 v6, v3, 0x2

    #v6=(Integer);
    int-to-float v6, v6

    #v6=(Float);
    sub-float/2addr v0, v6

    float-to-int v1, v0

    .line 155
    .local v1, srcX:I
    #v1=(Integer);
    int-to-float v0, v9

    mul-float v0, v0, p4

    div-int/lit8 v6, v4, 0x2

    #v6=(Integer);
    int-to-float v6, v6

    #v6=(Float);
    sub-float/2addr v0, v6

    float-to-int v2, v0

    .line 158
    .local v2, srcY:I
    #v2=(Integer);
    sub-int v0, v10, v3

    #v0=(Integer);
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v6, 0x0

    #v6=(Null);
    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 159
    sub-int v0, v9, v4

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v6, 0x0

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 161
    const/4 v6, 0x1

    #v6=(One);
    move-object v0, p0

    #v0=(Reference);
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .local v7, cropped:Landroid/graphics/Bitmap;
    #v7=(Reference);
    move-object p0, v7

    .line 173
    goto :goto_0
.end method

.method public static decodeByteArray([BII)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "src"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v2, 0x0

    #v2=(Null);
    const/4 v6, -0x1

    #v6=(Byte);
    const/4 v5, 0x0

    .line 46
    :try_start_0
    #v5=(Null);
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 47
    .local v0, opts:Landroid/graphics/BitmapFactory$Options;
    #v0=(Reference);
    const/4 v3, 0x1

    #v3=(One);
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 48
    const/4 v3, 0x0

    #v3=(Null);
    array-length v4, p0

    #v4=(Integer);
    invoke-static {p0, v3, v4, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 49
    iget-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    #v3=(Boolean);
    if-nez v3, :cond_0

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    #v3=(Integer);
    if-eq v3, v6, :cond_0

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v3, v6, :cond_1

    .line 57
    .end local v0           #opts:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Reference);v3=(Conflicted);v4=(Conflicted);v5=(Reference);
    return-object v2

    .line 52
    .restart local v0       #opts:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    #v0=(Reference);v1=(Uninit);v2=(Null);v3=(Integer);v4=(Integer);v5=(Null);
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v3, p1

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v4, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 53
    const/4 v3, 0x0

    #v3=(Null);
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 54
    const/4 v3, 0x0

    array-length v4, p0

    invoke-static {p0, v3, v4, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    #v2=(Reference);
    goto :goto_0

    .line 55
    .end local v0           #opts:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    #v0=(Conflicted);v2=(Null);v3=(Conflicted);v4=(Conflicted);
    move-exception v1

    .line 56
    .local v1, t:Ljava/lang/Throwable;
    #v1=(Reference);
    const-string v3, "PhotoManager"

    #v3=(Reference);
    const-string v4, "unable to decode image"

    #v4=(Reference);
    new-array v5, v5, [Ljava/lang/Object;

    #v5=(Reference);
    invoke-static {v3, v1, v4, v5}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public static decodeByteArrayWithCenterCrop([BII)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "src"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 72
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/android/mail/photomanager/BitmapUtil;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 73
    .local v0, decoded:Landroid/graphics/Bitmap;
    #v0=(Reference);
    invoke-static {v0, p1, p2}, Lcom/android/mail/photomanager/BitmapUtil;->centerCrop(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 77
    .end local v0           #decoded:Landroid/graphics/Bitmap;
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Reference);v3=(Conflicted);v4=(Conflicted);
    return-object v2

    .line 75
    :catch_0
    move-exception v1

    .line 76
    .local v1, t:Ljava/lang/Throwable;
    #v1=(Reference);
    const-string v2, "PhotoManager"

    #v2=(Reference);
    const-string v3, "unable to crop image"

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    new-array v4, v4, [Ljava/lang/Object;

    #v4=(Reference);
    invoke-static {v2, v1, v3, v4}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 77
    const/4 v2, 0x0

    #v2=(Null);
    goto :goto_0
.end method
