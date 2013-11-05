.class public Lcom/android/exchange/MockParserStream;
.super Ljava/io/InputStream;
.source "MockParserStream.java"


# instance fields
.field array:[I

.field pos:I


# virtual methods
.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    :try_start_0
    iget-object v1, p0, Lcom/android/exchange/MockParserStream;->array:[I

    #v1=(Reference);
    iget v2, p0, Lcom/android/exchange/MockParserStream;->pos:I

    #v2=(Integer);
    add-int/lit8 v3, v2, 0x1

    #v3=(Integer);
    iput v3, p0, Lcom/android/exchange/MockParserStream;->pos:I

    aget v1, v1, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #v1=(Integer);
    return v1

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    #v0=(Reference);
    new-instance v1, Ljava/io/IOException;

    #v1=(UninitRef);
    const-string v2, "End of stream"

    #v2=(Reference);
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #v1=(Reference);
    throw v1
.end method
