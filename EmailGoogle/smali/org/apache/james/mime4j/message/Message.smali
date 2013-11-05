.class public Lorg/apache/james/mime4j/message/Message;
.super Lorg/apache/james/mime4j/message/Entity;
.source "Message.java"

# interfaces
.implements Lorg/apache/james/mime4j/message/Body;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/james/mime4j/message/Message$MessageBuilder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/apache/james/mime4j/message/Entity;-><init>()V

    .line 55
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/apache/james/mime4j/message/Entity;-><init>()V

    .line 65
    #p0=(Reference);
    new-instance v0, Lorg/apache/james/mime4j/MimeStreamParser;

    #v0=(UninitRef);
    invoke-direct {v0}, Lorg/apache/james/mime4j/MimeStreamParser;-><init>()V

    .line 66
    .local v0, parser:Lorg/apache/james/mime4j/MimeStreamParser;
    #v0=(Reference);
    new-instance v1, Lorg/apache/james/mime4j/message/Message$MessageBuilder;

    #v1=(UninitRef);
    invoke-direct {v1, p0}, Lorg/apache/james/mime4j/message/Message$MessageBuilder;-><init>(Lorg/apache/james/mime4j/message/Message;)V

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/MimeStreamParser;->setContentHandler(Lorg/apache/james/mime4j/ContentHandler;)V

    .line 67
    invoke-virtual {v0, p1}, Lorg/apache/james/mime4j/MimeStreamParser;->parse(Ljava/io/InputStream;)V

    .line 68
    return-void
.end method


# virtual methods
.method public getSubject()Lorg/apache/james/mime4j/field/UnstructuredField;
    .locals 2

    .prologue
    .line 78
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Message;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v0

    #v0=(Reference);
    const-string v1, "Subject"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/UnstructuredField;

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Message;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v2, p1}, Lorg/apache/james/mime4j/message/Header;->writeTo(Ljava/io/OutputStream;)V

    .line 89
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Message;->getBody()Lorg/apache/james/mime4j/message/Body;

    move-result-object v0

    .line 90
    .local v0, body:Lorg/apache/james/mime4j/message/Body;
    #v0=(Reference);
    instance-of v2, v0, Lorg/apache/james/mime4j/message/Multipart;

    #v2=(Boolean);
    if-eqz v2, :cond_0

    move-object v1, v0

    .line 91
    #v1=(Reference);
    check-cast v1, Lorg/apache/james/mime4j/message/Multipart;

    .line 92
    .local v1, mp:Lorg/apache/james/mime4j/message/Multipart;
    invoke-virtual {v1, p1}, Lorg/apache/james/mime4j/message/Multipart;->writeTo(Ljava/io/OutputStream;)V

    .line 96
    .end local v1           #mp:Lorg/apache/james/mime4j/message/Multipart;
    :goto_0
    #v1=(Conflicted);
    return-void

    .line 94
    :cond_0
    #v1=(Uninit);
    invoke-interface {v0, p1}, Lorg/apache/james/mime4j/message/Body;->writeTo(Ljava/io/OutputStream;)V

    goto :goto_0
.end method
