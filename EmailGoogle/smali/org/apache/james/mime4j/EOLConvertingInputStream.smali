.class public Lorg/apache/james/mime4j/EOLConvertingInputStream;
.super Ljava/io/InputStream;
.source "EOLConvertingInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/james/mime4j/EOLConvertingInputStream$Callback;
    }
.end annotation


# instance fields
.field private callback:Lorg/apache/james/mime4j/EOLConvertingInputStream$Callback;

.field private flags:I

.field private in:Ljava/io/PushbackInputStream;

.field private nextTenPctPos:I

.field private pos:I

.field private previous:I

.field private size:I

.field private tenPctSize:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .parameter "_in"

    .prologue
    const/4 v1, 0x0

    .line 63
    #v1=(Null);
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 42
    #p0=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->in:Ljava/io/PushbackInputStream;

    .line 43
    iput v1, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->previous:I

    .line 44
    const/4 v0, 0x3

    #v0=(PosByte);
    iput v0, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->flags:I

    .line 45
    iput v1, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->size:I

    .line 46
    iput v1, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->pos:I

    .line 64
    new-instance v0, Ljava/io/PushbackInputStream;

    #v0=(UninitRef);
    const/4 v1, 0x2

    #v1=(PosByte);
    invoke-direct {v0, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    #v0=(Reference);
    iput-object v0, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->in:Ljava/io/PushbackInputStream;

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ILorg/apache/james/mime4j/EOLConvertingInputStream$Callback;)V
    .locals 1
    .parameter "_in"
    .parameter "_size"
    .parameter "_callback"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/EOLConvertingInputStream;-><init>(Ljava/io/InputStream;)V

    .line 77
    #p0=(Reference);
    iput p2, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->size:I

    .line 78
    iget v0, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->size:I

    #v0=(Integer);
    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->tenPctSize:I

    .line 79
    iget v0, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->tenPctSize:I

    iput v0, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->nextTenPctPos:I

    .line 80
    iput-object p3, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->callback:Lorg/apache/james/mime4j/EOLConvertingInputStream$Callback;

    .line 81
    return-void
.end method

.method private readByte()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    iget-object v1, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->in:Ljava/io/PushbackInputStream;

    #v1=(Reference);
    invoke-virtual {v1}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .line 94
    .local v0, b:I
    #v0=(Integer);
    const/4 v1, -0x1

    #v1=(Byte);
    if-eq v0, v1, :cond_0

    .line 95
    iget-object v1, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->callback:Lorg/apache/james/mime4j/EOLConvertingInputStream$Callback;

    #v1=(Reference);
    if-eqz v1, :cond_0

    iget v1, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->pos:I

    #v1=(Integer);
    add-int/lit8 v2, v1, 0x1

    #v2=(Integer);
    iput v2, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->pos:I

    iget v2, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->nextTenPctPos:I

    if-ne v1, v2, :cond_0

    .line 96
    iget v1, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->nextTenPctPos:I

    iget v2, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->tenPctSize:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->nextTenPctPos:I

    .line 97
    iget-object v1, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->callback:Lorg/apache/james/mime4j/EOLConvertingInputStream$Callback;

    #v1=(Reference);
    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->callback:Lorg/apache/james/mime4j/EOLConvertingInputStream$Callback;

    iget v2, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->pos:I

    invoke-interface {v1, v2}, Lorg/apache/james/mime4j/EOLConvertingInputStream$Callback;->report(I)V

    .line 102
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);
    return v0
.end method

.method private unreadByte(I)V
    .locals 1
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->in:Ljava/io/PushbackInputStream;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 107
    iget v0, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->pos:I

    #v0=(Integer);
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->pos:I

    .line 108
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->in:Ljava/io/PushbackInputStream;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->close()V

    .line 90
    return-void
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xd

    #v5=(PosByte);
    const/4 v2, -0x1

    #v2=(Byte);
    const/16 v4, 0xa

    .line 114
    #v4=(PosByte);
    invoke-direct {p0}, Lorg/apache/james/mime4j/EOLConvertingInputStream;->readByte()I

    move-result v0

    .line 116
    .local v0, b:I
    #v0=(Integer);
    if-ne v0, v2, :cond_0

    .line 117
    iget v3, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->size:I

    #v3=(Integer);
    iput v3, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->pos:I

    .line 136
    :goto_0
    #v1=(Conflicted);v2=(Integer);
    return v2

    .line 121
    :cond_0
    #v1=(Uninit);v2=(Byte);v3=(Uninit);
    iget v3, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->flags:I

    #v3=(Integer);
    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    if-ne v0, v5, :cond_3

    .line 122
    invoke-direct {p0}, Lorg/apache/james/mime4j/EOLConvertingInputStream;->readByte()I

    move-result v1

    .line 123
    .local v1, c:I
    #v1=(Integer);
    if-eq v1, v2, :cond_1

    .line 124
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/EOLConvertingInputStream;->unreadByte(I)V

    .line 126
    :cond_1
    if-eq v1, v4, :cond_2

    .line 127
    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/EOLConvertingInputStream;->unreadByte(I)V

    .line 134
    .end local v1           #c:I
    :cond_2
    :goto_1
    #v1=(Conflicted);v2=(Integer);
    iput v0, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->previous:I

    move v2, v0

    .line 136
    goto :goto_0

    .line 129
    :cond_3
    #v1=(Uninit);v2=(Byte);
    iget v2, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->flags:I

    #v2=(Integer);
    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    if-ne v0, v4, :cond_2

    iget v2, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->previous:I

    if-eq v2, v5, :cond_2

    .line 130
    const/16 v0, 0xd

    .line 131
    #v0=(PosByte);
    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/EOLConvertingInputStream;->unreadByte(I)V

    goto :goto_1
.end method
