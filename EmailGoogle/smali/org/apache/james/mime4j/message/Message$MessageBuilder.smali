.class Lorg/apache/james/mime4j/message/Message$MessageBuilder;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Lorg/apache/james/mime4j/ContentHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/james/mime4j/message/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageBuilder"
.end annotation


# instance fields
.field private stack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/james/mime4j/message/Message;


# direct methods
.method public constructor <init>(Lorg/apache/james/mime4j/message/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->this$0:Lorg/apache/james/mime4j/message/Message;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 100
    #p0=(Reference);
    new-instance v0, Ljava/util/Stack;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->stack:Ljava/util/Stack;

    .line 103
    return-void
.end method

.method private expect(Ljava/lang/Class;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 106
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->stack:Ljava/util/Stack;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 107
    new-instance v0, Ljava/lang/IllegalStateException;

    #v0=(UninitRef);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #v1=(Reference);
    const-string v2, "Internal stack error: Expected \'"

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' found \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    throw v0

    .line 111
    :cond_0
    #v0=(Boolean);v1=(Uninit);v2=(Uninit);
    return-void
.end method


# virtual methods
.method public body(Lorg/apache/james/mime4j/BodyDescriptor;Ljava/io/InputStream;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    const-class v0, Lorg/apache/james/mime4j/message/Entity;

    #v0=(Reference);
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->expect(Ljava/lang/Class;)V

    .line 178
    invoke-virtual {p1}, Lorg/apache/james/mime4j/BodyDescriptor;->getTransferEncoding()Ljava/lang/String;

    move-result-object v0

    .line 179
    const-string v1, "base64"

    #v1=(Reference);
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 180
    new-instance v0, Lorg/apache/james/mime4j/decoder/Base64InputStream;

    #v0=(UninitRef);
    invoke-direct {v0, p2}, Lorg/apache/james/mime4j/decoder/Base64InputStream;-><init>(Ljava/io/InputStream;)V

    #v0=(Reference);
    move-object p2, v0

    .line 186
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);
    invoke-virtual {p1}, Lorg/apache/james/mime4j/BodyDescriptor;->getMimeType()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    const-string v1, "text/"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_2

    .line 187
    new-instance v0, Lorg/apache/james/mime4j/message/MemoryTextBody;

    #v0=(UninitRef);
    invoke-virtual {p1}, Lorg/apache/james/mime4j/BodyDescriptor;->getCharset()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lorg/apache/james/mime4j/message/MemoryTextBody;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    #v0=(Reference);
    move-object v1, v0

    .line 192
    :goto_1
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/message/Entity;

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Entity;->setBody(Lorg/apache/james/mime4j/message/Body;)V

    .line 193
    return-void

    .line 181
    :cond_1
    #v1=(Boolean);
    const-string v1, "quoted-printable"

    #v1=(Reference);
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 182
    new-instance v0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;

    #v0=(UninitRef);
    invoke-direct {v0, p2}, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;-><init>(Ljava/io/InputStream;)V

    #v0=(Reference);
    move-object p2, v0

    goto :goto_0

    .line 189
    :cond_2
    #v0=(Boolean);
    new-instance v0, Lorg/apache/james/mime4j/message/MemoryBinaryBody;

    #v0=(UninitRef);
    invoke-direct {v0, p2}, Lorg/apache/james/mime4j/message/MemoryBinaryBody;-><init>(Ljava/io/InputStream;)V

    #v0=(Reference);
    move-object v1, v0

    goto :goto_1
.end method

.method public endBodyPart()V
    .locals 1

    .prologue
    .line 217
    const-class v0, Lorg/apache/james/mime4j/message/BodyPart;

    #v0=(Reference);
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->expect(Ljava/lang/Class;)V

    .line 218
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 219
    return-void
.end method

.method public endHeader()V
    .locals 2

    .prologue
    .line 154
    const-class v0, Lorg/apache/james/mime4j/message/Header;

    #v0=(Reference);
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->expect(Ljava/lang/Class;)V

    .line 155
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/message/Header;

    .line 156
    const-class v1, Lorg/apache/james/mime4j/message/Entity;

    #v1=(Reference);
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->expect(Ljava/lang/Class;)V

    .line 157
    iget-object v1, p0, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/message/Entity;

    invoke-virtual {v1, v0}, Lorg/apache/james/mime4j/message/Entity;->setHeader(Lorg/apache/james/mime4j/message/Header;)V

    .line 158
    return-void
.end method

.method public endMessage()V
    .locals 1

    .prologue
    .line 131
    const-class v0, Lorg/apache/james/mime4j/message/Message;

    #v0=(Reference);
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->expect(Ljava/lang/Class;)V

    .line 132
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 133
    return-void
.end method

.method public endMultipart()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->stack:Ljava/util/Stack;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 200
    return-void
.end method

.method public epilogue(Ljava/io/InputStream;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    const-class v0, Lorg/apache/james/mime4j/message/Multipart;

    #v0=(Reference);
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->expect(Ljava/lang/Class;)V

    .line 226
    new-instance v1, Ljava/lang/StringBuffer;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 228
    :goto_0
    #v0=(Conflicted);v1=(Reference);v2=(Conflicted);
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    #v0=(Integer);
    const/4 v2, -0x1

    #v2=(Byte);
    if-eq v0, v2, :cond_0

    .line 229
    int-to-char v0, v0

    #v0=(Char);
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 231
    :cond_0
    #v0=(Integer);
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->stack:Ljava/util/Stack;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/message/Multipart;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Multipart;->setEpilogue(Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public field(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 146
    const-class v0, Lorg/apache/james/mime4j/message/Header;

    #v0=(Reference);
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->expect(Ljava/lang/Class;)V

    .line 147
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/message/Header;

    invoke-static {p1}, Lorg/apache/james/mime4j/field/Field;->parse(Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Header;->addField(Lorg/apache/james/mime4j/field/Field;)V

    .line 148
    return-void
.end method

.method public preamble(Ljava/io/InputStream;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    const-class v0, Lorg/apache/james/mime4j/message/Multipart;

    #v0=(Reference);
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->expect(Ljava/lang/Class;)V

    .line 239
    new-instance v1, Ljava/lang/StringBuffer;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 241
    :goto_0
    #v0=(Conflicted);v1=(Reference);v2=(Conflicted);
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    #v0=(Integer);
    const/4 v2, -0x1

    #v2=(Byte);
    if-eq v0, v2, :cond_0

    .line 242
    int-to-char v0, v0

    #v0=(Char);
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 244
    :cond_0
    #v0=(Integer);
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->stack:Ljava/util/Stack;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/message/Multipart;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Multipart;->setPreamble(Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method public raw(Ljava/io/InputStream;)V
    .locals 2
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #v0=(UninitRef);
    const-string v1, "Not supported"

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    throw v0
.end method

.method public startBodyPart()V
    .locals 2

    .prologue
    .line 206
    const-class v0, Lorg/apache/james/mime4j/message/Multipart;

    #v0=(Reference);
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->expect(Ljava/lang/Class;)V

    .line 208
    new-instance v1, Lorg/apache/james/mime4j/message/BodyPart;

    #v1=(UninitRef);
    invoke-direct {v1}, Lorg/apache/james/mime4j/message/BodyPart;-><init>()V

    .line 209
    #v1=(Reference);
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/message/Multipart;

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Multipart;->addBodyPart(Lorg/apache/james/mime4j/message/BodyPart;)V

    .line 210
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    return-void
.end method

.method public startHeader()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->stack:Ljava/util/Stack;

    #v0=(Reference);
    new-instance v1, Lorg/apache/james/mime4j/message/Header;

    #v1=(UninitRef);
    invoke-direct {v1}, Lorg/apache/james/mime4j/message/Header;-><init>()V

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    return-void
.end method

.method public startMessage()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->stack:Ljava/util/Stack;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->stack:Ljava/util/Stack;

    #v0=(Reference);
    iget-object v1, p0, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->this$0:Lorg/apache/james/mime4j/message/Message;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :goto_0
    return-void

    .line 120
    :cond_0
    #v0=(Boolean);v1=(Uninit);
    const-class v0, Lorg/apache/james/mime4j/message/Entity;

    #v0=(Reference);
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->expect(Ljava/lang/Class;)V

    .line 121
    new-instance v1, Lorg/apache/james/mime4j/message/Message;

    #v1=(UninitRef);
    invoke-direct {v1}, Lorg/apache/james/mime4j/message/Message;-><init>()V

    .line 122
    #v1=(Reference);
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/message/Entity;

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Entity;->setBody(Lorg/apache/james/mime4j/message/Body;)V

    .line 123
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public startMultipart(Lorg/apache/james/mime4j/BodyDescriptor;)V
    .locals 2
    .parameter

    .prologue
    .line 164
    const-class v0, Lorg/apache/james/mime4j/message/Entity;

    #v0=(Reference);
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->expect(Ljava/lang/Class;)V

    .line 166
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/message/Entity;

    .line 167
    new-instance v1, Lorg/apache/james/mime4j/message/Multipart;

    #v1=(UninitRef);
    invoke-direct {v1}, Lorg/apache/james/mime4j/message/Multipart;-><init>()V

    .line 168
    #v1=(Reference);
    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Entity;->setBody(Lorg/apache/james/mime4j/message/Body;)V

    .line 169
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Message$MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    return-void
.end method
