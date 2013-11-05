.class public Lcom/android/emailcommon/internet/BinaryTempFileBody;
.super Ljava/lang/Object;
.source "BinaryTempFileBody.java"

# interfaces
.implements Lcom/android/emailcommon/mail/Body;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/internet/BinaryTempFileBody$BinaryTempFileBodyInputStream;
    }
.end annotation


# instance fields
.field private mFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 80
    #p0=(Reference);
    return-void
.end method

.method static synthetic access$000(Lcom/android/emailcommon/internet/BinaryTempFileBody;)Ljava/io/File;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/emailcommon/internet/BinaryTempFileBody;->mFile:Ljava/io/File;

    #v0=(Reference);
    return-object v0
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 63
    :try_start_0
    new-instance v1, Lcom/android/emailcommon/internet/BinaryTempFileBody$BinaryTempFileBodyInputStream;

    #v1=(UninitRef);
    new-instance v2, Ljava/io/FileInputStream;

    #v2=(UninitRef);
    iget-object v3, p0, Lcom/android/emailcommon/internet/BinaryTempFileBody;->mFile:Ljava/io/File;

    #v3=(Reference);
    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #v2=(Reference);
    invoke-direct {v1, p0, v2}, Lcom/android/emailcommon/internet/BinaryTempFileBody$BinaryTempFileBodyInputStream;-><init>(Lcom/android/emailcommon/internet/BinaryTempFileBody;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #v1=(Reference);
    return-object v1

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, ioe:Ljava/io/IOException;
    #v0=(Reference);
    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    #v1=(UninitRef);
    const-string v2, "Unable to open body"

    #v2=(Reference);
    invoke-direct {v1, v2, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #v1=(Reference);
    throw v1
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    const-string v0, "body"

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-static {}, Lcom/android/emailcommon/TempDirectory;->getTempDirectory()Ljava/io/File;

    move-result-object v2

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/internet/BinaryTempFileBody;->mFile:Ljava/io/File;

    .line 56
    iget-object v0, p0, Lcom/android/emailcommon/internet/BinaryTempFileBody;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 57
    new-instance v0, Ljava/io/FileOutputStream;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/android/emailcommon/internet/BinaryTempFileBody;->mFile:Ljava/io/File;

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    #v0=(Reference);
    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/emailcommon/internet/BinaryTempFileBody;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 73
    .local v1, in:Ljava/io/InputStream;
    #v1=(Reference);
    new-instance v0, Landroid/util/Base64OutputStream;

    #v0=(UninitRef);
    const/16 v2, 0x14

    #v2=(PosByte);
    invoke-direct {v0, p1, v2}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 75
    .local v0, base64Out:Landroid/util/Base64OutputStream;
    #v0=(Reference);
    invoke-static {v1, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 76
    invoke-virtual {v0}, Landroid/util/Base64OutputStream;->close()V

    .line 77
    iget-object v2, p0, Lcom/android/emailcommon/internet/BinaryTempFileBody;->mFile:Ljava/io/File;

    #v2=(Reference);
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 78
    return-void
.end method
