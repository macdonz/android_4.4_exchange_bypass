.class public Lorg/apache/commons/io/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# static fields
.field public static final DIR_SEPARATOR:C

.field public static final LINE_SEPARATOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 97
    sget-char v2, Ljava/io/File;->separatorChar:C

    #v2=(Char);
    sput-char v2, Lorg/apache/commons/io/IOUtils;->DIR_SEPARATOR:C

    .line 112
    new-instance v0, Ljava/io/StringWriter;

    #v0=(UninitRef);
    const/4 v2, 0x4

    #v2=(PosByte);
    invoke-direct {v0, v2}, Ljava/io/StringWriter;-><init>(I)V

    .line 113
    .local v0, buf:Ljava/io/StringWriter;
    #v0=(Reference);
    new-instance v1, Ljava/io/PrintWriter;

    #v1=(UninitRef);
    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 114
    .local v1, out:Ljava/io/PrintWriter;
    #v1=(Reference);
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 115
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    #v2=(Reference);
    sput-object v2, Lorg/apache/commons/io/IOUtils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 128
    #p0=(Reference);
    return-void
.end method

.method public static closeQuietly(Ljava/io/InputStream;)V
    .locals 1
    .parameter "input"

    .prologue
    .line 177
    if-eqz p0, :cond_0

    .line 178
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :cond_0
    :goto_0
    #v0=(Conflicted);
    return-void

    .line 180
    :catch_0
    #v0=(Uninit);
    move-exception v0

    #v0=(Reference);
    goto :goto_0
.end method

.method public static closeQuietly(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "output"

    .prologue
    .line 195
    if-eqz p0, :cond_0

    .line 196
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :cond_0
    :goto_0
    #v0=(Conflicted);
    return-void

    .line 198
    :catch_0
    #v0=(Uninit);
    move-exception v0

    #v0=(Reference);
    goto :goto_0
.end method

.method public static closeQuietly(Ljava/io/Reader;)V
    .locals 1
    .parameter "input"

    .prologue
    .line 141
    if-eqz p0, :cond_0

    .line 142
    :try_start_0
    invoke-virtual {p0}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :cond_0
    :goto_0
    #v0=(Conflicted);
    return-void

    .line 144
    :catch_0
    #v0=(Uninit);
    move-exception v0

    #v0=(Reference);
    goto :goto_0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 4
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 999
    invoke-static {p0, p1}, Lorg/apache/commons/io/IOUtils;->copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v0

    .line 1000
    .local v0, count:J
    #v0=(LongLo);v1=(LongHi);
    const-wide/32 v2, 0x7fffffff

    #v2=(LongLo);v3=(LongHi);
    cmp-long v2, v0, v2

    #v2=(Byte);
    if-lez v2, :cond_0

    .line 1001
    const/4 v2, -0x1

    .line 1003
    :goto_0
    #v2=(Integer);
    return v2

    :cond_0
    #v2=(Byte);
    long-to-int v2, v0

    #v2=(Integer);
    goto :goto_0
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/Writer;)I
    .locals 4
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1104
    invoke-static {p0, p1}, Lorg/apache/commons/io/IOUtils;->copyLarge(Ljava/io/Reader;Ljava/io/Writer;)J

    move-result-wide v0

    .line 1105
    .local v0, count:J
    #v0=(LongLo);v1=(LongHi);
    const-wide/32 v2, 0x7fffffff

    #v2=(LongLo);v3=(LongHi);
    cmp-long v2, v0, v2

    #v2=(Byte);
    if-lez v2, :cond_0

    .line 1106
    const/4 v2, -0x1

    .line 1108
    :goto_0
    #v2=(Integer);
    return v2

    :cond_0
    #v2=(Byte);
    long-to-int v2, v0

    #v2=(Integer);
    goto :goto_0
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/OutputStream;)V
    .locals 1
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1156
    new-instance v0, Ljava/io/OutputStreamWriter;

    #v0=(UninitRef);
    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1157
    .local v0, out:Ljava/io/OutputStreamWriter;
    #v0=(Reference);
    invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    .line 1160
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    .line 1161
    return-void
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .parameter "input"
    .parameter "output"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1188
    if-nez p2, :cond_0

    .line 1189
    invoke-static {p0, p1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/OutputStream;)V

    .line 1197
    :goto_0
    #v0=(Conflicted);
    return-void

    .line 1191
    :cond_0
    #v0=(Uninit);
    new-instance v0, Ljava/io/OutputStreamWriter;

    #v0=(UninitRef);
    invoke-direct {v0, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1192
    .local v0, out:Ljava/io/OutputStreamWriter;
    #v0=(Reference);
    invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    .line 1195
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    goto :goto_0
.end method

.method public static copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 6
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1022
    const/16 v4, 0x1000

    #v4=(PosShort);
    new-array v0, v4, [B

    .line 1023
    .local v0, buffer:[B
    #v0=(Reference);
    const-wide/16 v1, 0x0

    .line 1024
    .local v1, count:J
    #v1=(LongLo);v2=(LongHi);
    const/4 v3, 0x0

    .line 1025
    .local v3, n:I
    :goto_0
    #v3=(Integer);v4=(Conflicted);v5=(Conflicted);
    const/4 v4, -0x1

    #v4=(Byte);
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-eq v4, v3, :cond_0

    .line 1026
    const/4 v4, 0x0

    #v4=(Null);
    invoke-virtual {p1, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 1027
    int-to-long v4, v3

    #v4=(LongLo);v5=(LongHi);
    add-long/2addr v1, v4

    goto :goto_0

    .line 1029
    :cond_0
    #v4=(Byte);v5=(Conflicted);
    return-wide v1
.end method

.method public static copyLarge(Ljava/io/Reader;Ljava/io/Writer;)J
    .locals 6
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1125
    const/16 v4, 0x1000

    #v4=(PosShort);
    new-array v0, v4, [C

    .line 1126
    .local v0, buffer:[C
    #v0=(Reference);
    const-wide/16 v1, 0x0

    .line 1127
    .local v1, count:J
    #v1=(LongLo);v2=(LongHi);
    const/4 v3, 0x0

    .line 1128
    .local v3, n:I
    :goto_0
    #v3=(Integer);v4=(Conflicted);v5=(Conflicted);
    const/4 v4, -0x1

    #v4=(Byte);
    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v3

    if-eq v4, v3, :cond_0

    .line 1129
    const/4 v4, 0x0

    #v4=(Null);
    invoke-virtual {p1, v0, v4, v3}, Ljava/io/Writer;->write([CII)V

    .line 1130
    int-to-long v4, v3

    #v4=(LongLo);v5=(LongHi);
    add-long/2addr v1, v4

    goto :goto_0

    .line 1132
    :cond_0
    #v4=(Byte);v5=(Conflicted);
    return-wide v1
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    new-instance v0, Lorg/apache/commons/io/output/ByteArrayOutputStream;

    #v0=(UninitRef);
    invoke-direct {v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;-><init>()V

    .line 218
    .local v0, output:Lorg/apache/commons/io/output/ByteArrayOutputStream;
    #v0=(Reference);
    invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 219
    invoke-virtual {v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    #v1=(Reference);
    return-object v1
.end method

.method public static toByteArray(Ljava/io/Reader;)[B
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    new-instance v0, Lorg/apache/commons/io/output/ByteArrayOutputStream;

    #v0=(UninitRef);
    invoke-direct {v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;-><init>()V

    .line 236
    .local v0, output:Lorg/apache/commons/io/output/ByteArrayOutputStream;
    #v0=(Reference);
    invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/OutputStream;)V

    .line 237
    invoke-virtual {v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    #v1=(Reference);
    return-object v1
.end method

.method public static toByteArray(Ljava/io/Reader;Ljava/lang/String;)[B
    .locals 2
    .parameter "input"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 259
    new-instance v0, Lorg/apache/commons/io/output/ByteArrayOutputStream;

    #v0=(UninitRef);
    invoke-direct {v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;-><init>()V

    .line 260
    .local v0, output:Lorg/apache/commons/io/output/ByteArrayOutputStream;
    #v0=(Reference);
    invoke-static {p0, v0, p1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 261
    invoke-virtual {v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    #v1=(Reference);
    return-object v1
.end method

.method public static toByteArray(Ljava/lang/String;)[B
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method
