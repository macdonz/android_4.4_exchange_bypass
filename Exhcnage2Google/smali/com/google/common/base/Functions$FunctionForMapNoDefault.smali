.class Lcom/google/common/base/Functions$FunctionForMapNoDefault;
.super Ljava/lang/Object;
.source "Functions.java"

# interfaces
.implements Lcom/google/common/base/Function;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Functions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FunctionForMapNoDefault"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/base/Functions$FunctionForMapNoDefault;,"Lcom/google/common/base/Functions$FunctionForMapNoDefault<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    const/4 v3, 0x1

    #v3=(One);
    const/4 v2, 0x0

    .line 109
    #v2=(Null);
    iget-object v1, p0, Lcom/google/common/base/Functions$FunctionForMapNoDefault;->map:Ljava/util/Map;

    #v1=(Reference);
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 110
    .local v0, result:Ljava/lang/Object;,"TV;"
    #v0=(Reference);
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/common/base/Functions$FunctionForMapNoDefault;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    :cond_0
    #v1=(Conflicted);
    move v1, v3

    :goto_0
    #v1=(Boolean);
    const-string v4, "Key \'%s\' not present in map"

    #v4=(Reference);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    aput-object p1, v3, v2

    invoke-static {v1, v4, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 111
    return-object v0

    :cond_1
    #v3=(One);v4=(Uninit);
    move v1, v2

    .line 110
    #v1=(Null);
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 115
    .local p0, this:Lcom/google/common/base/Functions$FunctionForMapNoDefault;,"Lcom/google/common/base/Functions$FunctionForMapNoDefault<TK;TV;>;"
    instance-of v1, p1, Lcom/google/common/base/Functions$FunctionForMapNoDefault;

    #v1=(Boolean);
    if-eqz v1, :cond_0

    move-object v0, p1

    .line 116
    #v0=(Reference);
    check-cast v0, Lcom/google/common/base/Functions$FunctionForMapNoDefault;

    .line 117
    .local v0, that:Lcom/google/common/base/Functions$FunctionForMapNoDefault;,"Lcom/google/common/base/Functions$FunctionForMapNoDefault<**>;"
    iget-object v1, p0, Lcom/google/common/base/Functions$FunctionForMapNoDefault;->map:Ljava/util/Map;

    #v1=(Reference);
    iget-object v2, v0, Lcom/google/common/base/Functions$FunctionForMapNoDefault;->map:Ljava/util/Map;

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 119
    .end local v0           #that:Lcom/google/common/base/Functions$FunctionForMapNoDefault;,"Lcom/google/common/base/Functions$FunctionForMapNoDefault<**>;"
    :goto_0
    #v0=(Conflicted);v1=(Boolean);v2=(Conflicted);
    return v1

    :cond_0
    #v0=(Uninit);v2=(Uninit);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 123
    .local p0, this:Lcom/google/common/base/Functions$FunctionForMapNoDefault;,"Lcom/google/common/base/Functions$FunctionForMapNoDefault<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/base/Functions$FunctionForMapNoDefault;->map:Ljava/util/Map;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 127
    .local p0, this:Lcom/google/common/base/Functions$FunctionForMapNoDefault;,"Lcom/google/common/base/Functions$FunctionForMapNoDefault<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    const-string v1, "forMap("

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/base/Functions$FunctionForMapNoDefault;->map:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
