.class public Lorg/apache/commons/io/LineIterator;
.super Ljava/lang/Object;
.source "LineIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private final bufferedReader:Ljava/io/BufferedReader;

.field private cachedLine:Ljava/lang/String;

.field private finished:Z


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lorg/apache/commons/io/LineIterator;->finished:Z

    .line 156
    iget-object v0, p0, Lorg/apache/commons/io/LineIterator;->bufferedReader:Ljava/io/BufferedReader;

    #v0=(Reference);
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 157
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lorg/apache/commons/io/LineIterator;->cachedLine:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public hasNext()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    #v3=(Null);
    const/4 v2, 0x1

    .line 89
    #v2=(One);
    iget-object v4, p0, Lorg/apache/commons/io/LineIterator;->cachedLine:Ljava/lang/String;

    #v4=(Reference);
    if-eqz v4, :cond_0

    .line 102
    :goto_0
    #v1=(Conflicted);v2=(Boolean);v4=(Conflicted);
    return v2

    .line 91
    :cond_0
    #v1=(Uninit);v2=(One);v4=(Reference);
    iget-boolean v4, p0, Lorg/apache/commons/io/LineIterator;->finished:Z

    #v4=(Boolean);
    if-eqz v4, :cond_1

    move v2, v3

    .line 92
    #v2=(Null);
    goto :goto_0

    .line 96
    :cond_1
    :try_start_0
    #v1=(Conflicted);v2=(One);
    iget-object v4, p0, Lorg/apache/commons/io/LineIterator;->bufferedReader:Ljava/io/BufferedReader;

    #v4=(Reference);
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, line:Ljava/lang/String;
    #v1=(Reference);
    if-nez v1, :cond_2

    .line 98
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/commons/io/LineIterator;->finished:Z

    move v2, v3

    .line 99
    #v2=(Null);
    goto :goto_0

    .line 100
    :cond_2
    #v2=(One);
    invoke-virtual {p0, v1}, Lorg/apache/commons/io/LineIterator;->isValidLine(Ljava/lang/String;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_1

    .line 101
    iput-object v1, p0, Lorg/apache/commons/io/LineIterator;->cachedLine:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    .end local v1           #line:Ljava/lang/String;
    :catch_0
    #v1=(Conflicted);v4=(Conflicted);
    move-exception v0

    .line 106
    .local v0, ioe:Ljava/io/IOException;
    #v0=(Reference);
    invoke-virtual {p0}, Lorg/apache/commons/io/LineIterator;->close()V

    .line 107
    new-instance v2, Ljava/lang/IllegalStateException;

    #v2=(UninitRef);
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #v2=(Reference);
    throw v2
.end method

.method protected isValidLine(Ljava/lang/String;)Z
    .locals 1
    .parameter "line"

    .prologue
    .line 119
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 129
    invoke-virtual {p0}, Lorg/apache/commons/io/LineIterator;->nextLine()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public nextLine()Ljava/lang/String;
    .locals 3

    .prologue
    .line 139
    invoke-virtual {p0}, Lorg/apache/commons/io/LineIterator;->hasNext()Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_0

    .line 140
    new-instance v1, Ljava/util/NoSuchElementException;

    #v1=(UninitRef);
    const-string v2, "No more lines"

    #v2=(Reference);
    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    #v1=(Reference);
    throw v1

    .line 142
    :cond_0
    #v1=(Boolean);v2=(Uninit);
    iget-object v0, p0, Lorg/apache/commons/io/LineIterator;->cachedLine:Ljava/lang/String;

    .line 143
    .local v0, currentLine:Ljava/lang/String;
    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    iput-object v1, p0, Lorg/apache/commons/io/LineIterator;->cachedLine:Ljava/lang/String;

    .line 144
    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 166
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #v0=(UninitRef);
    const-string v1, "Remove unsupported on LineIterator"

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    throw v0
.end method
