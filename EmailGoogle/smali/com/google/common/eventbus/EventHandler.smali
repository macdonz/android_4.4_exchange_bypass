.class Lcom/google/common/eventbus/EventHandler;
.super Ljava/lang/Object;
.source "EventHandler.java"


# instance fields
.field private final method:Ljava/lang/reflect/Method;

.field private final target:Ljava/lang/Object;


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    #v1=(One);
    const/4 v2, 0x0

    .line 91
    #v2=(Null);
    if-ne p0, p1, :cond_1

    .line 105
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Boolean);v3=(Conflicted);v4=(Conflicted);
    return v1

    .line 95
    :cond_1
    #v0=(Uninit);v1=(One);v3=(Uninit);v4=(Uninit);
    if-nez p1, :cond_2

    move v1, v2

    .line 96
    #v1=(Null);
    goto :goto_0

    .line 99
    :cond_2
    #v1=(One);
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    #v4=(Reference);
    if-eq v3, v4, :cond_3

    move v1, v2

    .line 100
    #v1=(Null);
    goto :goto_0

    :cond_3
    #v1=(One);
    move-object v0, p1

    .line 103
    #v0=(Reference);
    check-cast v0, Lcom/google/common/eventbus/EventHandler;

    .line 105
    .local v0, other:Lcom/google/common/eventbus/EventHandler;
    iget-object v3, p0, Lcom/google/common/eventbus/EventHandler;->method:Ljava/lang/reflect/Method;

    iget-object v4, v0, Lcom/google/common/eventbus/EventHandler;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/common/eventbus/EventHandler;->target:Ljava/lang/Object;

    #v3=(Reference);
    iget-object v4, v0, Lcom/google/common/eventbus/EventHandler;->target:Ljava/lang/Object;

    if-eq v3, v4, :cond_0

    :cond_4
    #v3=(Conflicted);
    move v1, v2

    #v1=(Null);
    goto :goto_0
.end method

.method public handleEvent(Ljava/lang/Object;)V
    .locals 5
    .parameter "event"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 68
    :try_start_0
    iget-object v1, p0, Lcom/google/common/eventbus/EventHandler;->method:Ljava/lang/reflect/Method;

    #v1=(Reference);
    iget-object v2, p0, Lcom/google/common/eventbus/EventHandler;->target:Ljava/lang/Object;

    #v2=(Reference);
    const/4 v3, 0x1

    #v3=(One);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 79
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, e:Ljava/lang/IllegalArgumentException;
    #v0=(Reference);
    new-instance v1, Ljava/lang/Error;

    #v1=(UninitRef);
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #v2=(Reference);
    const-string v3, "Method rejected target/argument: "

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #v1=(Reference);
    throw v1

    .line 71
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 72
    .local v0, e:Ljava/lang/IllegalAccessException;
    #v0=(Reference);
    new-instance v1, Ljava/lang/Error;

    #v1=(UninitRef);
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #v2=(Reference);
    const-string v3, "Method became inaccessible: "

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #v1=(Reference);
    throw v1

    .line 73
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 74
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    #v0=(Reference);
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    #v1=(Reference);
    instance-of v1, v1, Ljava/lang/Error;

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 75
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Ljava/lang/Error;

    throw v1

    .line 77
    :cond_0
    #v1=(Boolean);
    throw v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 86
    const/16 v0, 0x1f

    .line 87
    .local v0, PRIME:I
    #v0=(PosByte);
    iget-object v1, p0, Lcom/google/common/eventbus/EventHandler;->method:Ljava/lang/reflect/Method;

    #v1=(Reference);
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v1

    #v1=(Integer);
    add-int/lit8 v1, v1, 0x1f

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/common/eventbus/EventHandler;->target:Ljava/lang/Object;

    #v2=(Reference);
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    #v2=(Integer);
    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    const-string v1, "[wrapper "

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/eventbus/EventHandler;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
