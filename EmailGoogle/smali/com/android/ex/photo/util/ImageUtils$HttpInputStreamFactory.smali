.class Lcom/android/ex/photo/util/ImageUtils$HttpInputStreamFactory;
.super Lcom/android/ex/photo/util/ImageUtils$BaseInputStreamFactory;
.source "ImageUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/photo/util/ImageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HttpInputStreamFactory"
.end annotation


# instance fields
.field private mData:[B


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0
    .parameter "resolver"
    .parameter "uri"

    .prologue
    .line 288
    invoke-direct {p0, p1, p2}, Lcom/android/ex/photo/util/ImageUtils$BaseInputStreamFactory;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 289
    #p0=(Reference);
    return-void
.end method

.method private downloadBytes()[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 303
    #v6=(Null);
    const/4 v2, 0x0

    .line 304
    .local v2, is:Ljava/io/InputStream;
    #v2=(Null);
    const/4 v4, 0x0

    .line 307
    .local v4, out:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    #v4=(Null);
    new-instance v7, Ljava/net/URL;

    #v7=(UninitRef);
    iget-object v8, p0, Lcom/android/ex/photo/util/ImageUtils$BaseInputStreamFactory;->mUri:Landroid/net/Uri;

    #v8=(Reference);
    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    #v7=(Reference);
    invoke-virtual {v7}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 311
    :try_start_1
    #v2=(Reference);
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    #v5=(UninitRef);
    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 312
    .end local v4           #out:Ljava/io/ByteArrayOutputStream;
    .local v5, out:Ljava/io/ByteArrayOutputStream;
    #v5=(Reference);
    const/16 v7, 0x1000

    :try_start_2
    #v7=(PosShort);
    new-array v0, v7, [B

    .line 313
    .local v0, buffer:[B
    #v0=(Reference);
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 314
    .local v3, n:I
    :goto_0
    #v3=(Integer);
    if-ltz v3, :cond_2

    .line 315
    const/4 v7, 0x0

    #v7=(Null);
    invoke-virtual {v5, v0, v7, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 316
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a

    move-result v3

    goto :goto_0

    .line 308
    .end local v0           #buffer:[B
    .end local v3           #n:I
    .end local v5           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #out:Ljava/io/ByteArrayOutputStream;
    :catch_0
    #v0=(Uninit);v2=(Null);v3=(Uninit);v5=(Uninit);v7=(Conflicted);v8=(Conflicted);
    move-exception v1

    .line 322
    .local v1, e:Ljava/net/MalformedURLException;
    #v1=(Reference);
    if-eqz v2, :cond_0

    .line 324
    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 328
    :cond_0
    :goto_1
    if-eqz v4, :cond_1

    .line 330
    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 335
    .end local v1           #e:Ljava/net/MalformedURLException;
    :cond_1
    :goto_2
    #v0=(Conflicted);v1=(Conflicted);v2=(Reference);v3=(Conflicted);v4=(Reference);v5=(Conflicted);v6=(Reference);
    return-object v6

    .line 319
    .end local v4           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #buffer:[B
    .restart local v3       #n:I
    .restart local v5       #out:Ljava/io/ByteArrayOutputStream;
    :cond_2
    :try_start_5
    #v0=(Reference);v1=(Uninit);v3=(Integer);v4=(Null);v5=(Reference);v6=(Null);v7=(PosShort);v8=(Reference);
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a

    move-result-object v6

    .line 322
    #v6=(Reference);
    if-eqz v2, :cond_3

    .line 324
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 328
    :cond_3
    :goto_3
    #v7=(Conflicted);
    if-eqz v5, :cond_4

    .line 330
    :try_start_7
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    :cond_4
    :goto_4
    move-object v4, v5

    .line 332
    .end local v5           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #out:Ljava/io/ByteArrayOutputStream;
    #v4=(Reference);
    goto :goto_2

    .line 320
    .end local v0           #buffer:[B
    .end local v3           #n:I
    :catch_1
    #v0=(Uninit);v3=(Uninit);v4=(Null);v5=(Conflicted);v6=(Null);v8=(Conflicted);
    move-exception v7

    .line 322
    :goto_5
    #v0=(Conflicted);v3=(Conflicted);v4=(Reference);v7=(Reference);
    if-eqz v2, :cond_5

    .line 324
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 328
    :cond_5
    :goto_6
    if-eqz v4, :cond_1

    .line 330
    :try_start_9
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_2

    .line 331
    :catch_2
    move-exception v7

    goto :goto_2

    .line 322
    :catchall_0
    #v0=(Uninit);v3=(Uninit);v4=(Null);v7=(Conflicted);
    move-exception v6

    :goto_7
    #v0=(Conflicted);v3=(Conflicted);v4=(Reference);v6=(Reference);
    if-eqz v2, :cond_6

    .line 324
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 328
    :cond_6
    :goto_8
    if-eqz v4, :cond_7

    .line 330
    :try_start_b
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 332
    :cond_7
    :goto_9
    throw v6

    .line 325
    .restart local v1       #e:Ljava/net/MalformedURLException;
    :catch_3
    #v0=(Uninit);v1=(Reference);v2=(Null);v3=(Uninit);v4=(Null);v5=(Uninit);v6=(Null);
    move-exception v7

    #v7=(Reference);
    goto :goto_1

    .line 331
    :catch_4
    #v7=(Conflicted);
    move-exception v7

    #v7=(Reference);
    goto :goto_2

    .line 325
    .end local v1           #e:Ljava/net/MalformedURLException;
    .end local v4           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #buffer:[B
    .restart local v3       #n:I
    .restart local v5       #out:Ljava/io/ByteArrayOutputStream;
    :catch_5
    #v0=(Reference);v1=(Uninit);v2=(Reference);v3=(Integer);v5=(Reference);v6=(Reference);v7=(PosShort);v8=(Reference);
    move-exception v7

    #v7=(Reference);
    goto :goto_3

    .line 331
    :catch_6
    #v7=(Conflicted);
    move-exception v7

    #v7=(Reference);
    goto :goto_4

    .line 325
    .end local v0           #buffer:[B
    .end local v3           #n:I
    .end local v5           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #out:Ljava/io/ByteArrayOutputStream;
    :catch_7
    #v0=(Conflicted);v3=(Conflicted);v4=(Reference);v5=(Conflicted);v6=(Null);v8=(Conflicted);
    move-exception v7

    goto :goto_6

    :catch_8
    #v6=(Reference);v7=(Conflicted);
    move-exception v7

    #v7=(Reference);
    goto :goto_8

    .line 331
    :catch_9
    #v7=(Conflicted);
    move-exception v7

    #v7=(Reference);
    goto :goto_9

    .line 322
    .end local v4           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #out:Ljava/io/ByteArrayOutputStream;
    :catchall_1
    #v4=(Null);v5=(Reference);v6=(Null);v7=(PosShort);v8=(Reference);
    move-exception v6

    #v6=(Reference);
    move-object v4, v5

    .end local v5           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #out:Ljava/io/ByteArrayOutputStream;
    #v4=(Reference);
    goto :goto_7

    .line 320
    .end local v4           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #out:Ljava/io/ByteArrayOutputStream;
    :catch_a
    #v4=(Null);v6=(Null);
    move-exception v7

    #v7=(Reference);
    move-object v4, v5

    .end local v5           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #out:Ljava/io/ByteArrayOutputStream;
    #v4=(Reference);
    goto :goto_5
.end method


# virtual methods
.method public createInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/ex/photo/util/ImageUtils$HttpInputStreamFactory;->mData:[B

    #v0=(Reference);
    if-nez v0, :cond_0

    .line 294
    invoke-direct {p0}, Lcom/android/ex/photo/util/ImageUtils$HttpInputStreamFactory;->downloadBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/photo/util/ImageUtils$HttpInputStreamFactory;->mData:[B

    .line 295
    iget-object v0, p0, Lcom/android/ex/photo/util/ImageUtils$HttpInputStreamFactory;->mData:[B

    if-nez v0, :cond_0

    .line 296
    invoke-super {p0}, Lcom/android/ex/photo/util/ImageUtils$BaseInputStreamFactory;->createInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 299
    :goto_0
    #v1=(Conflicted);
    return-object v0

    :cond_0
    #v1=(Uninit);
    new-instance v0, Ljava/io/ByteArrayInputStream;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/android/ex/photo/util/ImageUtils$HttpInputStreamFactory;->mData:[B

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #v0=(Reference);
    goto :goto_0
.end method
