.class public Lorg/apache/commons/io/filefilter/SizeFileFilter;
.super Lorg/apache/commons/io/filefilter/AbstractFileFilter;
.source "SizeFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final acceptLarger:Z

.field private final size:J


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 7
    .parameter "file"

    .prologue
    const/4 v1, 0x1

    #v1=(One);
    const/4 v2, 0x0

    .line 89
    #v2=(Null);
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    #v3=(LongLo);v4=(LongHi);
    iget-wide v5, p0, Lorg/apache/commons/io/filefilter/SizeFileFilter;->size:J

    #v5=(LongLo);v6=(LongHi);
    cmp-long v3, v3, v5

    #v3=(Byte);
    if-gez v3, :cond_0

    move v0, v1

    .line 90
    .local v0, smaller:Z
    :goto_0
    #v0=(Boolean);
    iget-boolean v3, p0, Lorg/apache/commons/io/filefilter/SizeFileFilter;->acceptLarger:Z

    #v3=(Boolean);
    if-eqz v3, :cond_2

    if-nez v0, :cond_1

    :goto_1
    #v1=(Boolean);
    return v1

    .end local v0           #smaller:Z
    :cond_0
    #v0=(Uninit);v1=(One);v3=(Byte);
    move v0, v2

    .line 89
    #v0=(Null);
    goto :goto_0

    .restart local v0       #smaller:Z
    :cond_1
    #v0=(Boolean);v3=(Boolean);
    move v1, v2

    .line 90
    #v1=(Null);
    goto :goto_1

    :cond_2
    #v1=(One);
    move v1, v0

    #v1=(Boolean);
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 99
    iget-boolean v1, p0, Lorg/apache/commons/io/filefilter/SizeFileFilter;->acceptLarger:Z

    #v1=(Boolean);
    if-eqz v1, :cond_0

    const-string v0, ">="

    .line 100
    .local v0, condition:Ljava/lang/String;
    :goto_0
    #v0=(Reference);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #v1=(Reference);
    invoke-super {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;->toString()Ljava/lang/String;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/commons/io/filefilter/SizeFileFilter;->size:J

    #v2=(LongLo);v3=(LongHi);
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 99
    .end local v0           #condition:Ljava/lang/String;
    :cond_0
    #v0=(Uninit);v1=(Boolean);v2=(Uninit);v3=(Uninit);
    const-string v0, "<"

    #v0=(Reference);
    goto :goto_0
.end method
