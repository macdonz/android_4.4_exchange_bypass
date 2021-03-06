.class Lorg/apache/james/mime4j/message/MemoryTextBody;
.super Lorg/apache/james/mime4j/message/AbstractBody;
.source "MemoryTextBody.java"

# interfaces
.implements Lorg/apache/james/mime4j/message/TextBody;


# static fields
.field private static log:Lorg/apache/james/mime4j/Log;


# instance fields
.field private mimeCharset:Ljava/lang/String;

.field private tempFile:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lorg/apache/james/mime4j/message/MemoryTextBody;

    #v0=(Reference);
    invoke-static {v0}, Lorg/apache/james/mime4j/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/james/mime4j/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/message/MemoryTextBody;->log:Lorg/apache/james/mime4j/Log;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 3
    .parameter "is"
    .parameter "mimeCharset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 58
    #v2=(Null);
    invoke-direct {p0}, Lorg/apache/james/mime4j/message/AbstractBody;-><init>()V

    .line 50
    #p0=(Reference);
    iput-object v2, p0, Lorg/apache/james/mime4j/message/MemoryTextBody;->mimeCharset:Ljava/lang/String;

    .line 51
    iput-object v2, p0, Lorg/apache/james/mime4j/message/MemoryTextBody;->tempFile:[B

    .line 60
    iput-object p2, p0, Lorg/apache/james/mime4j/message/MemoryTextBody;->mimeCharset:Ljava/lang/String;

    .line 62
    invoke-static {}, Lorg/apache/james/mime4j/util/TempStorage;->getInstance()Lorg/apache/james/mime4j/util/TempStorage;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v2}, Lorg/apache/james/mime4j/util/TempStorage;->getRootTempPath()Lorg/apache/james/mime4j/util/TempPath;

    move-result-object v1

    .line 64
    .local v1, tempPath:Lorg/apache/james/mime4j/util/TempPath;
    #v1=(Reference);
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 65
    .local v0, out:Ljava/io/ByteArrayOutputStream;
    #v0=(Reference);
    invoke-static {p1, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 66
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 67
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lorg/apache/james/mime4j/message/MemoryTextBody;->tempFile:[B

    .line 68
    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    new-instance v0, Ljava/io/ByteArrayInputStream;

    #v0=(UninitRef);
    iget-object v1, p0, Lorg/apache/james/mime4j/message/MemoryTextBody;->tempFile:[B

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #v0=(Reference);
    invoke-static {v0, p1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 117
    return-void
.end method
