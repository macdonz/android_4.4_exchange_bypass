.class public Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;
.super Ljava/lang/Object;
.source "SimpleCharStream.java"


# instance fields
.field available:I

.field protected bufcolumn:[I

.field protected buffer:[C

.field protected bufline:[I

.field public bufpos:I

.field bufsize:I

.field protected column:I

.field protected inBuf:I

.field protected inputStream:Ljava/io/Reader;

.field protected line:I

.field protected maxNextCharInd:I

.field protected prevCharIsCR:Z

.field protected prevCharIsLF:Z

.field protected tabSize:I

.field tokenBegin:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;II)V
    .locals 1
    .parameter "dstream"
    .parameter "startline"
    .parameter "startcolumn"

    .prologue
    .line 273
    const/16 v0, 0x1000

    #v0=(PosShort);
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;-><init>(Ljava/io/Reader;III)V

    .line 274
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;III)V
    .locals 2
    .parameter "dstream"
    .parameter "startline"
    .parameter "startcolumn"
    .parameter "buffersize"

    .prologue
    const/4 v1, 0x0

    .line 259
    #v1=(Null);
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    #p0=(Reference);
    const/4 v0, -0x1

    #v0=(Byte);
    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    .line 34
    iput v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->column:I

    .line 35
    const/4 v0, 0x1

    #v0=(One);
    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->line:I

    .line 37
    iput-boolean v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->prevCharIsCR:Z

    .line 38
    iput-boolean v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->prevCharIsLF:Z

    .line 43
    iput v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->maxNextCharInd:I

    .line 44
    iput v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->inBuf:I

    .line 45
    const/16 v0, 0x8

    #v0=(PosByte);
    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tabSize:I

    .line 260
    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->inputStream:Ljava/io/Reader;

    .line 261
    iput p2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->line:I

    .line 262
    add-int/lit8 v0, p3, -0x1

    #v0=(Integer);
    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->column:I

    .line 264
    iput p4, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    iput p4, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->available:I

    .line 265
    new-array v0, p4, [C

    #v0=(Reference);
    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->buffer:[C

    .line 266
    new-array v0, p4, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufline:[I

    .line 267
    new-array v0, p4, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufcolumn:[I

    .line 268
    return-void
.end method


# virtual methods
.method public BeginToken()C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    const/4 v1, -0x1

    #v1=(Byte);
    iput v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    .line 149
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->readChar()C

    move-result v0

    .line 150
    .local v0, c:C
    #v0=(Char);
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    #v1=(Integer);
    iput v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    .line 152
    return v0
.end method

.method protected ExpandBuff(Z)V
    .locals 10
    .parameter "wrapAround"

    .prologue
    const/4 v9, 0x0

    .line 53
    #v9=(Null);
    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    #v4=(Integer);
    add-int/lit16 v4, v4, 0x800

    new-array v1, v4, [C

    .line 54
    .local v1, newbuffer:[C
    #v1=(Reference);
    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    add-int/lit16 v4, v4, 0x800

    new-array v2, v4, [I

    .line 55
    .local v2, newbufline:[I
    #v2=(Reference);
    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    add-int/lit16 v4, v4, 0x800

    new-array v0, v4, [I

    .line 59
    .local v0, newbufcolumn:[I
    #v0=(Reference);
    if-eqz p1, :cond_0

    .line 61
    :try_start_0
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->buffer:[C

    #v4=(Reference);
    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    #v5=(Integer);
    const/4 v6, 0x0

    #v6=(Null);
    iget v7, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    #v7=(Integer);
    iget v8, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    #v8=(Integer);
    sub-int/2addr v7, v8

    invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->buffer:[C

    const/4 v5, 0x0

    #v5=(Null);
    iget v6, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    #v6=(Integer);
    iget v7, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v6, v7

    iget v7, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->buffer:[C

    .line 66
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufline:[I

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    #v5=(Integer);
    const/4 v6, 0x0

    #v6=(Null);
    iget v7, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    iget v8, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufline:[I

    const/4 v5, 0x0

    #v5=(Null);
    iget v6, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    #v6=(Integer);
    iget v7, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v6, v7

    iget v7, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    invoke-static {v4, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufline:[I

    .line 70
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufcolumn:[I

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    #v5=(Integer);
    const/4 v6, 0x0

    #v6=(Null);
    iget v7, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    iget v8, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufcolumn:[I

    const/4 v5, 0x0

    #v5=(Null);
    iget v6, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    #v6=(Integer);
    iget v7, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v6, v7

    iget v7, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    invoke-static {v4, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufcolumn:[I

    .line 74
    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    #v4=(Integer);
    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    #v5=(Integer);
    iget v6, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    iput v4, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->maxNextCharInd:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    add-int/lit16 v4, v4, 0x800

    iput v4, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    .line 97
    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    iput v4, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->available:I

    .line 98
    iput v9, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    .line 99
    return-void

    .line 78
    :cond_0
    :try_start_1
    #v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->buffer:[C

    #v4=(Reference);
    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    #v5=(Integer);
    const/4 v6, 0x0

    #v6=(Null);
    iget v7, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    #v7=(Integer);
    iget v8, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    #v8=(Integer);
    sub-int/2addr v7, v8

    invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->buffer:[C

    .line 81
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufline:[I

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    const/4 v6, 0x0

    iget v7, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    iget v8, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufline:[I

    .line 84
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufcolumn:[I

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    const/4 v6, 0x0

    iget v7, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    iget v8, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufcolumn:[I

    .line 87
    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    #v4=(Integer);
    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v4, v5

    iput v4, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    iput v4, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->maxNextCharInd:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 90
    :catch_0
    #v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    move-exception v3

    .line 92
    .local v3, t:Ljava/lang/Throwable;
    #v3=(Reference);
    new-instance v4, Ljava/lang/Error;

    #v4=(UninitRef);
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    #v5=(Reference);
    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    #v4=(Reference);
    throw v4
.end method

.method protected FillBuff()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x800

    #v4=(PosShort);
    const/4 v8, -0x1

    #v8=(Byte);
    const/4 v7, 0x0

    .line 103
    #v7=(Null);
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->maxNextCharInd:I

    #v2=(Integer);
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->available:I

    #v3=(Integer);
    if-ne v2, v3, :cond_0

    .line 105
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->available:I

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    if-ne v2, v3, :cond_4

    .line 107
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    if-le v2, v4, :cond_2

    .line 109
    iput v7, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->maxNextCharInd:I

    iput v7, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    .line 110
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    iput v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->available:I

    .line 127
    :cond_0
    :goto_0
    :try_start_0
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->inputStream:Ljava/io/Reader;

    #v2=(Reference);
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->buffer:[C

    #v3=(Reference);
    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->maxNextCharInd:I

    #v4=(Integer);
    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->available:I

    #v5=(Integer);
    iget v6, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->maxNextCharInd:I

    #v6=(Integer);
    sub-int/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/Reader;->read([CII)I

    move-result v1

    .local v1, i:I
    #v1=(Integer);
    if-ne v1, v8, :cond_7

    .line 130
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->inputStream:Ljava/io/Reader;

    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    .line 131
    new-instance v2, Ljava/io/IOException;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    #v2=(Reference);
    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .end local v1           #i:I
    :catch_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    move-exception v0

    .line 138
    .local v0, e:Ljava/io/IOException;
    #v0=(Reference);
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    #v2=(Integer);
    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    .line 139
    invoke-virtual {p0, v7}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->backup(I)V

    .line 140
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    if-ne v2, v8, :cond_1

    .line 141
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    iput v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    .line 142
    :cond_1
    throw v0

    .line 112
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    #v0=(Uninit);v1=(Uninit);v3=(Integer);v4=(PosShort);v5=(Uninit);v6=(Uninit);
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    if-gez v2, :cond_3

    .line 113
    iput v7, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->maxNextCharInd:I

    iput v7, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    goto :goto_0

    .line 115
    :cond_3
    invoke-virtual {p0, v7}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->ExpandBuff(Z)V

    goto :goto_0

    .line 117
    :cond_4
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->available:I

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    if-le v2, v3, :cond_5

    .line 118
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    iput v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->available:I

    goto :goto_0

    .line 119
    :cond_5
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->available:I

    sub-int/2addr v2, v3

    if-ge v2, v4, :cond_6

    .line 120
    const/4 v2, 0x1

    #v2=(One);
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->ExpandBuff(Z)V

    goto :goto_0

    .line 122
    :cond_6
    #v2=(Integer);
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    iput v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->available:I

    goto :goto_0

    .line 134
    .restart local v1       #i:I
    :cond_7
    :try_start_1
    #v1=(Integer);v2=(Reference);v3=(Reference);v4=(Integer);v5=(Integer);v6=(Integer);
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->maxNextCharInd:I

    #v2=(Integer);
    add-int/2addr v2, v1

    iput v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->maxNextCharInd:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 135
    return-void
.end method

.method public GetImage()Ljava/lang/String;
    .locals 6

    .prologue
    .line 376
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    #v0=(Integer);
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    #v1=(Integer);
    if-lt v0, v1, :cond_0

    .line 377
    new-instance v0, Ljava/lang/String;

    #v0=(UninitRef);
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->buffer:[C

    #v1=(Reference);
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    #v2=(Integer);
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    #v3=(Integer);
    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    #v4=(Integer);
    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 379
    :goto_0
    #v0=(Reference);v2=(Conflicted);v5=(Conflicted);
    return-object v0

    :cond_0
    #v0=(Integer);v1=(Integer);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    new-instance v1, Ljava/lang/String;

    #v1=(UninitRef);
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->buffer:[C

    #v2=(Reference);
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    #v3=(Integer);
    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    #v4=(Integer);
    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    #v5=(Integer);
    sub-int/2addr v4, v5

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    #v1=(UninitRef);
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->buffer:[C

    const/4 v3, 0x0

    #v3=(Null);
    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public GetSuffix(I)[C
    .locals 5
    .parameter "len"

    .prologue
    const/4 v4, 0x0

    .line 385
    #v4=(Null);
    new-array v0, p1, [C

    .line 387
    .local v0, ret:[C
    #v0=(Reference);
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    #v1=(Integer);
    add-int/lit8 v1, v1, 0x1

    if-lt v1, p1, :cond_0

    .line 388
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->buffer:[C

    #v1=(Reference);
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    #v2=(Integer);
    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 396
    :goto_0
    #v3=(Conflicted);
    return-object v0

    .line 391
    :cond_0
    #v1=(Integer);v2=(Uninit);v3=(Uninit);
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->buffer:[C

    #v1=(Reference);
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    #v2=(Integer);
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    #v3=(Integer);
    sub-int v3, p1, v3

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v2, v3

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    sub-int v3, p1, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 393
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->buffer:[C

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    sub-int v2, p1, v2

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method protected UpdateLineColumn(C)V
    .locals 4
    .parameter "c"

    .prologue
    const/4 v2, 0x0

    #v2=(Null);
    const/4 v1, 0x1

    .line 157
    #v1=(One);
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->column:I

    #v0=(Integer);
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->column:I

    .line 159
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->prevCharIsLF:Z

    #v0=(Boolean);
    if-eqz v0, :cond_1

    .line 161
    iput-boolean v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->prevCharIsLF:Z

    .line 162
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->line:I

    #v0=(Integer);
    iput v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->column:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->line:I

    .line 175
    :cond_0
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 191
    :goto_1
    :pswitch_0
    #v1=(Integer);v2=(Integer);v3=(Conflicted);
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufline:[I

    #v0=(Reference);
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->line:I

    aput v2, v0, v1

    .line 192
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufcolumn:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->column:I

    aput v2, v0, v1

    .line 193
    return-void

    .line 164
    :cond_1
    #v0=(Boolean);v1=(One);v2=(Null);v3=(Uninit);
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->prevCharIsCR:Z

    if-eqz v0, :cond_0

    .line 166
    iput-boolean v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->prevCharIsCR:Z

    .line 167
    const/16 v0, 0xa

    #v0=(PosByte);
    if-ne p1, v0, :cond_2

    .line 169
    iput-boolean v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->prevCharIsLF:Z

    goto :goto_0

    .line 172
    :cond_2
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->line:I

    #v0=(Integer);
    iput v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->column:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->line:I

    goto :goto_0

    .line 178
    :pswitch_1
    iput-boolean v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->prevCharIsCR:Z

    goto :goto_1

    .line 181
    :pswitch_2
    iput-boolean v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->prevCharIsLF:Z

    goto :goto_1

    .line 184
    :pswitch_3
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->column:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->column:I

    .line 185
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->column:I

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tabSize:I

    #v1=(Integer);
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->column:I

    #v2=(Integer);
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tabSize:I

    #v3=(Integer);
    rem-int/2addr v2, v3

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->column:I

    goto :goto_1

    .line 175
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public backup(I)V
    .locals 2
    .parameter "amount"

    .prologue
    .line 252
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->inBuf:I

    #v0=(Integer);
    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->inBuf:I

    .line 253
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    if-gez v0, :cond_0

    .line 254
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    #v1=(Integer);
    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    .line 255
    :cond_0
    #v1=(Conflicted);
    return-void
.end method

.method public getBeginColumn()I
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufcolumn:[I

    #v0=(Reference);
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    #v1=(Integer);
    aget v0, v0, v1

    #v0=(Integer);
    return v0
.end method

.method public getBeginLine()I
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufline:[I

    #v0=(Reference);
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    #v1=(Integer);
    aget v0, v0, v1

    #v0=(Integer);
    return v0
.end method

.method public getEndColumn()I
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufcolumn:[I

    #v0=(Reference);
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    #v1=(Integer);
    aget v0, v0, v1

    #v0=(Integer);
    return v0
.end method

.method public getEndLine()I
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufline:[I

    #v0=(Reference);
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    #v1=(Integer);
    aget v0, v0, v1

    #v0=(Integer);
    return v0
.end method

.method public readChar()C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->inBuf:I

    #v1=(Integer);
    if-lez v1, :cond_1

    .line 199
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->inBuf:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->inBuf:I

    .line 201
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    #v2=(Integer);
    if-ne v1, v2, :cond_0

    .line 202
    const/4 v1, 0x0

    #v1=(Null);
    iput v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    .line 204
    :cond_0
    #v1=(Integer);
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->buffer:[C

    #v1=(Reference);
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    aget-char v0, v1, v2

    .line 213
    :goto_0
    #v0=(Char);
    return v0

    .line 207
    :cond_1
    #v0=(Uninit);v1=(Integer);v2=(Uninit);
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->maxNextCharInd:I

    #v2=(Integer);
    if-lt v1, v2, :cond_2

    .line 208
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->FillBuff()V

    .line 210
    :cond_2
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->buffer:[C

    #v1=(Reference);
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    aget-char v0, v1, v2

    .line 212
    .local v0, c:C
    #v0=(Char);
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->UpdateLineColumn(C)V

    goto :goto_0
.end method
