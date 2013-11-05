.class public Lorg/apache/james/mime4j/decoder/DecoderUtil;
.super Ljava/lang/Object;
.source "DecoderUtil.java"


# static fields
.field private static log:Lorg/apache/james/mime4j/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lorg/apache/james/mime4j/decoder/DecoderUtil;

    #v0=(Reference);
    invoke-static {v0}, Lorg/apache/james/mime4j/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/james/mime4j/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method public static decodeB(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "encodedWord"
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 113
    new-instance v0, Ljava/lang/String;

    #v0=(UninitRef);
    invoke-static {p0}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v1

    #v1=(Reference);
    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    #v0=(Reference);
    return-object v0
.end method

.method public static decodeBase64(Ljava/lang/String;)[B
    .locals 6
    .parameter "s"

    .prologue
    .line 78
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 81
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    #v1=(Reference);
    const-string v5, "US-ASCII"

    #v5=(Reference);
    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 83
    .local v2, bytes:[B
    #v2=(Reference);
    new-instance v4, Lorg/apache/james/mime4j/decoder/Base64InputStream;

    #v4=(UninitRef);
    new-instance v5, Ljava/io/ByteArrayInputStream;

    #v5=(UninitRef);
    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #v5=(Reference);
    invoke-direct {v4, v5}, Lorg/apache/james/mime4j/decoder/Base64InputStream;-><init>(Ljava/io/InputStream;)V

    .line 86
    .local v4, is:Lorg/apache/james/mime4j/decoder/Base64InputStream;
    #v4=(Reference);
    const/4 v0, 0x0

    .line 87
    .local v0, b:I
    :goto_0
    #v0=(Integer);v5=(Conflicted);
    invoke-virtual {v4}, Lorg/apache/james/mime4j/decoder/Base64InputStream;->read()I

    move-result v0

    const/4 v5, -0x1

    #v5=(Byte);
    if-eq v0, v5, :cond_0

    .line 88
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    .end local v0           #b:I
    .end local v2           #bytes:[B
    .end local v4           #is:Lorg/apache/james/mime4j/decoder/Base64InputStream;
    :catch_0
    #v0=(Conflicted);v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    move-exception v3

    .line 94
    .local v3, e:Ljava/io/IOException;
    #v3=(Reference);
    sget-object v5, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    #v5=(Reference);
    invoke-virtual {v5, v3}, Lorg/apache/james/mime4j/Log;->error(Ljava/lang/Object;)V

    .line 97
    .end local v3           #e:Ljava/io/IOException;
    :cond_0
    #v3=(Conflicted);v5=(Conflicted);
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    #v5=(Reference);
    return-object v5
.end method

.method public static decodeBaseQuotedPrintable(Ljava/lang/String;)[B
    .locals 6
    .parameter "s"

    .prologue
    .line 49
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 52
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    #v1=(Reference);
    const-string v5, "US-ASCII"

    #v5=(Reference);
    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 54
    .local v2, bytes:[B
    #v2=(Reference);
    new-instance v4, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;

    #v4=(UninitRef);
    new-instance v5, Ljava/io/ByteArrayInputStream;

    #v5=(UninitRef);
    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #v5=(Reference);
    invoke-direct {v4, v5}, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;-><init>(Ljava/io/InputStream;)V

    .line 57
    .local v4, is:Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;
    #v4=(Reference);
    const/4 v0, 0x0

    .line 58
    .local v0, b:I
    :goto_0
    #v0=(Integer);v5=(Conflicted);
    invoke-virtual {v4}, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->read()I

    move-result v0

    const/4 v5, -0x1

    #v5=(Byte);
    if-eq v0, v5, :cond_0

    .line 59
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    .end local v0           #b:I
    .end local v2           #bytes:[B
    .end local v4           #is:Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;
    :catch_0
    #v0=(Conflicted);v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    move-exception v3

    .line 65
    .local v3, e:Ljava/io/IOException;
    #v3=(Reference);
    sget-object v5, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    #v5=(Reference);
    invoke-virtual {v5, v3}, Lorg/apache/james/mime4j/Log;->error(Ljava/lang/Object;)V

    .line 68
    .end local v3           #e:Ljava/io/IOException;
    :cond_0
    #v3=(Conflicted);v5=(Conflicted);
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    #v5=(Reference);
    return-object v5
.end method

.method private static decodeEncodedWord(Ljava/lang/String;II)Ljava/lang/String;
    .locals 11
    .parameter "body"
    .parameter "begin"
    .parameter "end"

    .prologue
    const/16 v9, 0x3f

    #v9=(PosByte);
    const/4 v7, 0x0

    .line 214
    #v7=(Null);
    add-int/lit8 v8, p1, 0x2

    #v8=(Integer);
    invoke-virtual {p0, v9, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 215
    .local v5, qm1:I
    #v5=(Integer);
    add-int/lit8 v8, p2, -0x2

    if-ne v5, v8, :cond_1

    .line 276
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v6=(Conflicted);v7=(Reference);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    return-object v7

    .line 218
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v6=(Uninit);v7=(Null);v8=(Integer);v9=(PosByte);v10=(Uninit);
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0, v9, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 219
    .local v6, qm2:I
    #v6=(Integer);
    add-int/lit8 v8, p2, -0x2

    if-eq v6, v8, :cond_0

    .line 222
    add-int/lit8 v8, p1, 0x2

    invoke-virtual {p0, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 223
    .local v4, mimeCharset:Ljava/lang/String;
    #v4=(Reference);
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 224
    .local v3, encoding:Ljava/lang/String;
    #v3=(Reference);
    add-int/lit8 v8, v6, 0x1

    add-int/lit8 v9, p2, -0x2

    #v9=(Integer);
    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 226
    .local v2, encodedText:Ljava/lang/String;
    #v2=(Reference);
    invoke-static {v4}, Lorg/apache/james/mime4j/util/CharsetUtil;->toJavaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, charset:Ljava/lang/String;
    #v0=(Reference);
    if-nez v0, :cond_2

    .line 228
    sget-object v8, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    #v8=(Reference);
    invoke-virtual {v8}, Lorg/apache/james/mime4j/Log;->isWarnEnabled()Z

    move-result v8

    #v8=(Boolean);
    if-eqz v8, :cond_0

    .line 229
    sget-object v8, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    #v8=(Reference);
    new-instance v9, Ljava/lang/StringBuilder;

    #v9=(UninitRef);
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #v9=(Reference);
    const-string v10, "MIME charset \'"

    #v10=(Reference);
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' in encoded word \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' doesn\'t have a "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "corresponding Java charset"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/james/mime4j/Log;->warn(Ljava/lang/Object;)V

    goto :goto_0

    .line 234
    :cond_2
    #v8=(Integer);v9=(Integer);v10=(Uninit);
    invoke-static {v0}, Lorg/apache/james/mime4j/util/CharsetUtil;->isDecodingSupported(Ljava/lang/String;)Z

    move-result v8

    #v8=(Boolean);
    if-nez v8, :cond_3

    .line 235
    sget-object v8, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    #v8=(Reference);
    invoke-virtual {v8}, Lorg/apache/james/mime4j/Log;->isWarnEnabled()Z

    move-result v8

    #v8=(Boolean);
    if-eqz v8, :cond_0

    .line 236
    sget-object v8, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    #v8=(Reference);
    new-instance v9, Ljava/lang/StringBuilder;

    #v9=(UninitRef);
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #v9=(Reference);
    const-string v10, "Current JDK doesn\'t support decoding of charset \'"

    #v10=(Reference);
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' (MIME charset \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' in encoded word \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\')"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/james/mime4j/Log;->warn(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 244
    :cond_3
    #v8=(Boolean);v9=(Integer);v10=(Uninit);
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    #v8=(Integer);
    if-nez v8, :cond_4

    .line 245
    sget-object v8, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    #v8=(Reference);
    invoke-virtual {v8}, Lorg/apache/james/mime4j/Log;->isWarnEnabled()Z

    move-result v8

    #v8=(Boolean);
    if-eqz v8, :cond_0

    .line 246
    sget-object v8, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    #v8=(Reference);
    new-instance v9, Ljava/lang/StringBuilder;

    #v9=(UninitRef);
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #v9=(Reference);
    const-string v10, "Missing encoded text in encoded word: \'"

    #v10=(Reference);
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/james/mime4j/Log;->warn(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 253
    :cond_4
    :try_start_0
    #v8=(Integer);v9=(Integer);v10=(Uninit);
    const-string v8, "Q"

    #v8=(Reference);
    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    #v8=(Boolean);
    if-eqz v8, :cond_5

    .line 254
    invoke-static {v2, v0}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeQ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    #v7=(Reference);
    goto/16 :goto_0

    .line 255
    :cond_5
    #v7=(Null);
    const-string v8, "B"

    #v8=(Reference);
    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    #v8=(Boolean);
    if-eqz v8, :cond_6

    .line 256
    invoke-static {v2, v0}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeB(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    #v7=(Reference);
    goto/16 :goto_0

    .line 258
    :cond_6
    #v7=(Null);
    sget-object v8, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    #v8=(Reference);
    invoke-virtual {v8}, Lorg/apache/james/mime4j/Log;->isWarnEnabled()Z

    move-result v8

    #v8=(Boolean);
    if-eqz v8, :cond_0

    .line 259
    sget-object v8, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    #v8=(Reference);
    new-instance v9, Ljava/lang/StringBuilder;

    #v9=(UninitRef);
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #v9=(Reference);
    const-string v10, "Warning: Unknown encoding in encoded word \'"

    #v10=(Reference);
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/james/mime4j/Log;->warn(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 264
    :catch_0
    #v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    move-exception v1

    .line 266
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    #v1=(Reference);
    sget-object v8, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    #v8=(Reference);
    invoke-virtual {v8}, Lorg/apache/james/mime4j/Log;->isWarnEnabled()Z

    move-result v8

    #v8=(Boolean);
    if-eqz v8, :cond_0

    .line 267
    sget-object v8, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    #v8=(Reference);
    new-instance v9, Ljava/lang/StringBuilder;

    #v9=(UninitRef);
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #v9=(Reference);
    const-string v10, "Unsupported encoding in encoded word \'"

    #v10=(Reference);
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v1}, Lorg/apache/james/mime4j/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 271
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    #v1=(Uninit);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    move-exception v1

    .line 272
    .local v1, e:Ljava/lang/RuntimeException;
    #v1=(Reference);
    sget-object v8, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    #v8=(Reference);
    invoke-virtual {v8}, Lorg/apache/james/mime4j/Log;->isWarnEnabled()Z

    move-result v8

    #v8=(Boolean);
    if-eqz v8, :cond_0

    .line 273
    sget-object v8, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    #v8=(Reference);
    new-instance v9, Ljava/lang/StringBuilder;

    #v9=(UninitRef);
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #v9=(Reference);
    const-string v10, "Could not decode encoded word \'"

    #v10=(Reference);
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v1}, Lorg/apache/james/mime4j/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public static decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "body"

    .prologue
    const/16 v12, 0x3f

    #v12=(PosByte);
    const/4 v10, -0x1

    .line 160
    #v10=(Byte);
    const-string v11, "=?"

    #v11=(Reference);
    invoke-virtual {p0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    #v11=(Integer);
    if-ne v11, v10, :cond_1

    .line 190
    .end local p0
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);
    return-object p0

    .line 164
    .restart local p0
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Byte);v11=(Integer);
    const/4 v4, 0x0

    .line 165
    .local v4, previousEnd:I
    #v4=(Null);
    const/4 v5, 0x0

    .line 167
    .local v5, previousWasEncoded:Z
    #v5=(Null);
    new-instance v8, Ljava/lang/StringBuilder;

    #v8=(UninitRef);
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .local v8, sb:Ljava/lang/StringBuilder;
    :goto_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Integer);v5=(Boolean);v6=(Conflicted);v7=(Conflicted);v8=(Reference);v9=(Conflicted);v11=(Conflicted);
    const-string v11, "=?"

    #v11=(Reference);
    invoke-virtual {p0, v11, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 175
    .local v0, begin:I
    #v0=(Integer);
    add-int/lit8 v3, v0, 0x2

    .line 176
    .local v3, endScan:I
    #v3=(Integer);
    if-eq v0, v10, :cond_2

    .line 177
    add-int/lit8 v11, v3, 0x2

    #v11=(Integer);
    invoke-virtual {p0, v12, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 178
    .local v6, qm1:I
    #v6=(Integer);
    add-int/lit8 v11, v6, 0x1

    invoke-virtual {p0, v12, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 179
    .local v7, qm2:I
    #v7=(Integer);
    if-eq v7, v10, :cond_2

    .line 180
    add-int/lit8 v3, v7, 0x1

    .line 184
    .end local v6           #qm1:I
    .end local v7           #qm2:I
    :cond_2
    #v6=(Conflicted);v7=(Conflicted);v11=(Conflicted);
    if-ne v0, v10, :cond_3

    move v2, v10

    .line 185
    .local v2, end:I
    :goto_2
    #v2=(Integer);
    if-ne v2, v10, :cond_4

    .line 186
    if-eqz v4, :cond_0

    .line 189
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    #v10=(Reference);
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 184
    .end local v2           #end:I
    :cond_3
    #v2=(Conflicted);v10=(Byte);
    const-string v11, "?="

    #v11=(Reference);
    invoke-virtual {p0, v11, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    #v2=(Integer);
    goto :goto_2

    .line 192
    .restart local v2       #end:I
    :cond_4
    #v11=(Conflicted);
    add-int/lit8 v2, v2, 0x2

    .line 194
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 196
    .local v9, sep:Ljava/lang/String;
    #v9=(Reference);
    invoke-static {p0, v0, v2}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeEncodedWord(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, decoded:Ljava/lang/String;
    #v1=(Reference);
    if-nez v1, :cond_5

    .line 198
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    #v11=(Reference);
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    :goto_3
    #v11=(Conflicted);
    move v4, v2

    .line 208
    if-eqz v1, :cond_8

    const/4 v5, 0x1

    .line 209
    :goto_4
    goto :goto_1

    .line 201
    :cond_5
    if-eqz v5, :cond_6

    invoke-static {v9}, Lorg/apache/james/mime4j/util/CharsetUtil;->isWhitespace(Ljava/lang/String;)Z

    move-result v11

    #v11=(Boolean);
    if-nez v11, :cond_7

    .line 202
    :cond_6
    #v11=(Conflicted);
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    :cond_7
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 208
    :cond_8
    const/4 v5, 0x0

    #v5=(Null);
    goto :goto_4
.end method

.method public static decodeQ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "encodedWord"
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 132
    new-instance v2, Ljava/lang/StringBuffer;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 133
    .local v2, sb:Ljava/lang/StringBuffer;
    #v2=(Reference);
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    #v0=(Conflicted);v1=(Integer);v3=(Conflicted);
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    #v3=(Integer);
    if-ge v1, v3, :cond_1

    .line 134
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 135
    .local v0, c:C
    #v0=(Char);
    const/16 v3, 0x5f

    #v3=(PosByte);
    if-ne v0, v3, :cond_0

    .line 136
    const-string v3, "=20"

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    :goto_1
    #v3=(Conflicted);
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    :cond_0
    #v3=(PosByte);
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 142
    .end local v0           #c:C
    :cond_1
    #v0=(Conflicted);v3=(Integer);
    new-instance v3, Ljava/lang/String;

    #v3=(UninitRef);
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    #v4=(Reference);
    invoke-static {v4}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeBaseQuotedPrintable(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    #v3=(Reference);
    return-object v3
.end method
