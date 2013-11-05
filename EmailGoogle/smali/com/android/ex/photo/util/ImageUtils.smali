.class public Lcom/android/ex/photo/util/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/photo/util/ImageUtils$HttpInputStreamFactory;,
        Lcom/android/ex/photo/util/ImageUtils$DataInputStreamFactory;,
        Lcom/android/ex/photo/util/ImageUtils$BaseInputStreamFactory;,
        Lcom/android/ex/photo/util/ImageUtils$InputStreamFactory;,
        Lcom/android/ex/photo/util/ImageUtils$ImageSize;
    }
.end annotation


# static fields
.field private static final BASE64_IMAGE_URI_PATTERN:Ljava/util/regex/Pattern;

.field public static final sUseImageSize:Lcom/android/ex/photo/util/ImageUtils$ImageSize;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 57
    const-string v0, "^(?:.*;)?base64,.*"

    #v0=(Reference);
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/ex/photo/util/ImageUtils;->BASE64_IMAGE_URI_PATTERN:Ljava/util/regex/Pattern;

    .line 68
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #v0=(Integer);
    const/16 v1, 0xb

    #v1=(PosByte);
    if-lt v0, v1, :cond_0

    .line 69
    sget-object v0, Lcom/android/ex/photo/util/ImageUtils$ImageSize;->NORMAL:Lcom/android/ex/photo/util/ImageUtils$ImageSize;

    #v0=(Reference);
    sput-object v0, Lcom/android/ex/photo/util/ImageUtils;->sUseImageSize:Lcom/android/ex/photo/util/ImageUtils$ImageSize;

    .line 82
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-void

    .line 71
    :cond_0
    #v0=(Integer);v1=(PosByte);v2=(Uninit);v3=(Uninit);
    sget v0, Lcom/android/ex/photo/PhotoViewActivity;->sMemoryClass:I

    int-to-long v0, v0

    #v0=(LongLo);v1=(LongHi);
    const-wide/16 v2, 0x20

    #v2=(LongLo);v3=(LongHi);
    cmp-long v0, v0, v2

    #v0=(Byte);
    if-ltz v0, :cond_1

    .line 73
    sget-object v0, Lcom/android/ex/photo/util/ImageUtils$ImageSize;->NORMAL:Lcom/android/ex/photo/util/ImageUtils$ImageSize;

    #v0=(Reference);
    sput-object v0, Lcom/android/ex/photo/util/ImageUtils;->sUseImageSize:Lcom/android/ex/photo/util/ImageUtils$ImageSize;

    goto :goto_0

    .line 74
    :cond_1
    #v0=(Byte);
    sget v0, Lcom/android/ex/photo/PhotoViewActivity;->sMemoryClass:I

    #v0=(Integer);
    int-to-long v0, v0

    #v0=(LongLo);
    const-wide/16 v2, 0x18

    cmp-long v0, v0, v2

    #v0=(Byte);
    if-ltz v0, :cond_2

    .line 76
    sget-object v0, Lcom/android/ex/photo/util/ImageUtils$ImageSize;->SMALL:Lcom/android/ex/photo/util/ImageUtils$ImageSize;

    #v0=(Reference);
    sput-object v0, Lcom/android/ex/photo/util/ImageUtils;->sUseImageSize:Lcom/android/ex/photo/util/ImageUtils$ImageSize;

    goto :goto_0

    .line 79
    :cond_2
    #v0=(Byte);
    sget-object v0, Lcom/android/ex/photo/util/ImageUtils$ImageSize;->EXTRA_SMALL:Lcom/android/ex/photo/util/ImageUtils$ImageSize;

    #v0=(Reference);
    sput-object v0, Lcom/android/ex/photo/util/ImageUtils;->sUseImageSize:Lcom/android/ex/photo/util/ImageUtils$ImageSize;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 284
    #p0=(Reference);
    return-void
.end method

.method static synthetic access$000()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/ex/photo/util/ImageUtils;->BASE64_IMAGE_URI_PATTERN:Ljava/util/regex/Pattern;

    #v0=(Reference);
    return-object v0
.end method

.method private static createInputStreamFactory(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/android/ex/photo/util/ImageUtils$InputStreamFactory;
    .locals 2
    .parameter "resolver"
    .parameter "uri"

    .prologue
    .line 208
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, scheme:Ljava/lang/String;
    #v0=(Reference);
    const-string v1, "http"

    #v1=(Reference);
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_0

    const-string v1, "https"

    #v1=(Reference);
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 210
    :cond_0
    new-instance v1, Lcom/android/ex/photo/util/ImageUtils$HttpInputStreamFactory;

    #v1=(UninitRef);
    invoke-direct {v1, p0, p1}, Lcom/android/ex/photo/util/ImageUtils$HttpInputStreamFactory;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 214
    :goto_0
    #v1=(Reference);
    return-object v1

    .line 211
    :cond_1
    #v1=(Boolean);
    const-string v1, "data"

    #v1=(Reference);
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_2

    .line 212
    new-instance v1, Lcom/android/ex/photo/util/ImageUtils$DataInputStreamFactory;

    #v1=(UninitRef);
    invoke-direct {v1, p0, p1}, Lcom/android/ex/photo/util/ImageUtils$DataInputStreamFactory;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    #v1=(Reference);
    goto :goto_0

    .line 214
    :cond_2
    #v1=(Boolean);
    new-instance v1, Lcom/android/ex/photo/util/ImageUtils$BaseInputStreamFactory;

    #v1=(UninitRef);
    invoke-direct {v1, p0, p1}, Lcom/android/ex/photo/util/ImageUtils$BaseInputStreamFactory;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    #v1=(Reference);
    goto :goto_0
.end method

.method public static createLocalBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;I)Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;
    .locals 8
    .parameter "resolver"
    .parameter "uri"
    .parameter "maxSize"

    .prologue
    const/4 v7, 0x1

    .line 101
    #v7=(One);
    new-instance v4, Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;

    #v4=(UninitRef);
    invoke-direct {v4}, Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;-><init>()V

    .line 102
    .local v4, result:Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;
    #v4=(Reference);
    invoke-static {p0, p1}, Lcom/android/ex/photo/util/ImageUtils;->createInputStreamFactory(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/android/ex/photo/util/ImageUtils$InputStreamFactory;

    move-result-object v2

    .line 104
    .local v2, factory:Lcom/android/ex/photo/util/ImageUtils$InputStreamFactory;
    :try_start_0
    #v2=(Reference);
    invoke-static {v2}, Lcom/android/ex/photo/util/ImageUtils;->getImageBounds(Lcom/android/ex/photo/util/ImageUtils$InputStreamFactory;)Landroid/graphics/Point;

    move-result-object v0

    .line 105
    .local v0, bounds:Landroid/graphics/Point;
    #v0=(Reference);
    if-nez v0, :cond_0

    .line 106
    const/4 v5, 0x1

    #v5=(One);
    iput v5, v4, Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;->status:I

    .line 125
    .end local v0           #bounds:Landroid/graphics/Point;
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    return-object v4

    .line 110
    .restart local v0       #bounds:Landroid/graphics/Point;
    :cond_0
    #v0=(Reference);v1=(Uninit);v3=(Uninit);v5=(Uninit);v6=(Uninit);
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    #v3=(UninitRef);
    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 111
    .local v3, opts:Landroid/graphics/BitmapFactory$Options;
    #v3=(Reference);
    iget v5, v0, Landroid/graphics/Point;->x:I

    #v5=(Integer);
    div-int/2addr v5, p2

    iget v6, v0, Landroid/graphics/Point;->y:I

    #v6=(Integer);
    div-int/2addr v6, p2

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 112
    const/4 v5, 0x0

    #v5=(Null);
    invoke-static {v2, v5, v3}, Lcom/android/ex/photo/util/ImageUtils;->decodeStream(Lcom/android/ex/photo/util/ImageUtils$InputStreamFactory;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    #v5=(Reference);
    iput-object v5, v4, Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;->bitmap:Landroid/graphics/Bitmap;

    .line 113
    const/4 v5, 0x0

    #v5=(Null);
    iput v5, v4, Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;->status:I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 116
    .end local v0           #bounds:Landroid/graphics/Point;
    .end local v3           #opts:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    #v0=(Conflicted);v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    move-exception v5

    #v5=(Reference);
    goto :goto_0

    .line 118
    :catch_1
    #v5=(Conflicted);
    move-exception v1

    .line 119
    .local v1, exception:Ljava/io/IOException;
    #v1=(Reference);
    iput v7, v4, Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;->status:I

    goto :goto_0

    .line 122
    .end local v1           #exception:Ljava/io/IOException;
    :catch_2
    #v1=(Uninit);
    move-exception v1

    .line 123
    .local v1, exception:Ljava/lang/SecurityException;
    #v1=(Reference);
    iput v7, v4, Lcom/android/ex/photo/loaders/PhotoBitmapLoaderInterface$BitmapResult;->status:I

    goto :goto_0

    .line 120
    .end local v1           #exception:Ljava/lang/SecurityException;
    :catch_3
    #v1=(Uninit);
    move-exception v5

    #v5=(Reference);
    goto :goto_0
.end method

.method public static decodeStream(Lcom/android/ex/photo/util/ImageUtils$InputStreamFactory;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "factory"
    .parameter "outPadding"
    .parameter "opts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 147
    #v11=(Null);
    const/4 v8, 0x0

    .line 150
    .local v8, is:Ljava/io/InputStream;
    :try_start_0
    #v8=(Null);
    invoke-interface {p0}, Lcom/android/ex/photo/util/ImageUtils$InputStreamFactory;->createInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 151
    #v8=(Reference);
    const-wide/16 v1, -0x1

    #v1=(LongLo);v2=(LongHi);
    invoke-static {v8, v1, v2}, Lcom/android/ex/photo/util/Exif;->getOrientation(Ljava/io/InputStream;J)I

    move-result v10

    .line 152
    .local v10, orientation:I
    #v10=(Integer);
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 155
    invoke-interface {p0}, Lcom/android/ex/photo/util/ImageUtils$InputStreamFactory;->createInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 156
    invoke-static {v8, p1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 158
    .local v0, originalBitmap:Landroid/graphics/Bitmap;
    #v0=(Reference);
    if-eqz v8, :cond_2

    if-nez v0, :cond_2

    iget-boolean v1, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    #v1=(Boolean);
    if-nez v1, :cond_2

    .line 159
    const-string v1, "ImageUtils"

    #v1=(Reference);
    const-string v2, "ImageUtils#decodeStream(InputStream, Rect, Options): Image bytes cannot be decoded into a Bitmap"

    #v2=(Reference);
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    #v1=(UninitRef);
    const-string v2, "Image bytes cannot be decoded into a Bitmap."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #v1=(Reference);
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 173
    .end local v0           #originalBitmap:Landroid/graphics/Bitmap;
    .end local v10           #orientation:I
    :catch_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v10=(Conflicted);
    move-exception v9

    .line 174
    .local v9, oome:Ljava/lang/OutOfMemoryError;
    :try_start_1
    #v9=(Reference);
    const-string v1, "ImageUtils"

    #v1=(Reference);
    const-string v2, "ImageUtils#decodeStream(InputStream, Rect, Options) threw an OOME"

    #v2=(Reference);
    invoke-static {v1, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    if-eqz v8, :cond_0

    .line 182
    :try_start_2
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_0
    :goto_0
    move-object v0, v11

    .line 185
    .end local v9           #oome:Ljava/lang/OutOfMemoryError;
    :cond_1
    :goto_1
    #v0=(Reference);v1=(Conflicted);v2=(Conflicted);v7=(Conflicted);v9=(Conflicted);
    return-object v0

    .line 166
    .restart local v0       #originalBitmap:Landroid/graphics/Bitmap;
    .restart local v10       #orientation:I
    :cond_2
    #v2=(LongHi);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v9=(Uninit);v10=(Integer);
    if-eqz v0, :cond_3

    if-eqz v10, :cond_3

    .line 167
    :try_start_3
    new-instance v5, Landroid/graphics/Matrix;

    #v5=(UninitRef);
    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 168
    .local v5, matrix:Landroid/graphics/Matrix;
    #v5=(Reference);
    int-to-float v1, v10

    #v1=(Float);
    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 169
    const/4 v1, 0x0

    #v1=(Null);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    #v3=(Integer);
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    #v4=(Integer);
    const/4 v6, 0x1

    #v6=(One);
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v0

    .line 180
    .end local v0           #originalBitmap:Landroid/graphics/Bitmap;
    if-eqz v8, :cond_1

    .line 182
    :try_start_4
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 183
    :catch_1
    move-exception v1

    #v1=(Reference);
    goto :goto_1

    .line 180
    .end local v5           #matrix:Landroid/graphics/Matrix;
    .restart local v0       #originalBitmap:Landroid/graphics/Bitmap;
    :cond_3
    #v1=(Conflicted);v2=(LongHi);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);
    if-eqz v8, :cond_1

    .line 182
    :try_start_5
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 183
    :catch_2
    move-exception v1

    #v1=(Reference);
    goto :goto_1

    .line 176
    .end local v0           #originalBitmap:Landroid/graphics/Bitmap;
    .end local v10           #orientation:I
    :catch_3
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v10=(Conflicted);
    move-exception v7

    .line 177
    .local v7, ioe:Ljava/io/IOException;
    :try_start_6
    #v7=(Reference);
    const-string v1, "ImageUtils"

    #v1=(Reference);
    const-string v2, "ImageUtils#decodeStream(InputStream, Rect, Options) threw an IOE"

    #v2=(Reference);
    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 180
    if-eqz v8, :cond_4

    .line 182
    :try_start_7
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_4
    :goto_2
    move-object v0, v11

    .line 185
    #v0=(Null);
    goto :goto_1

    .line 180
    .end local v7           #ioe:Ljava/io/IOException;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v7=(Conflicted);v9=(Conflicted);
    move-exception v1

    #v1=(Reference);
    if-eqz v8, :cond_5

    .line 182
    :try_start_8
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 185
    :cond_5
    :goto_3
    throw v1

    .line 183
    .restart local v9       #oome:Ljava/lang/OutOfMemoryError;
    :catch_4
    #v2=(Reference);v7=(Uninit);v9=(Reference);
    move-exception v1

    goto :goto_0

    .end local v9           #oome:Ljava/lang/OutOfMemoryError;
    .restart local v7       #ioe:Ljava/io/IOException;
    :catch_5
    #v7=(Reference);v9=(Uninit);
    move-exception v1

    goto :goto_2

    .end local v7           #ioe:Ljava/io/IOException;
    :catch_6
    #v2=(Conflicted);v7=(Conflicted);v9=(Conflicted);
    move-exception v2

    #v2=(Reference);
    goto :goto_3
.end method

.method private static getImageBounds(Lcom/android/ex/photo/util/ImageUtils$InputStreamFactory;)Landroid/graphics/Point;
    .locals 4
    .parameter "factory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 200
    .local v0, opts:Landroid/graphics/BitmapFactory$Options;
    #v0=(Reference);
    const/4 v1, 0x1

    #v1=(One);
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 201
    const/4 v1, 0x0

    #v1=(Null);
    invoke-static {p0, v1, v0}, Lcom/android/ex/photo/util/ImageUtils;->decodeStream(Lcom/android/ex/photo/util/ImageUtils$InputStreamFactory;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 203
    new-instance v1, Landroid/graphics/Point;

    #v1=(UninitRef);
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    #v2=(Integer);
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    #v3=(Integer);
    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    #v1=(Reference);
    return-object v1
.end method

.method public static isImageMimeType(Ljava/lang/String;)Z
    .locals 1
    .parameter "mimeType"

    .prologue
    .line 88
    if-eqz p0, :cond_0

    const-string v0, "image/"

    #v0=(Reference);
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

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
