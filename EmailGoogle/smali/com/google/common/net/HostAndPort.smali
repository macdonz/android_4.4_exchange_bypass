.class public final Lcom/google/common/net/HostAndPort;
.super Ljava/lang/Object;
.source "HostAndPort.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# static fields
.field private static final BRACKET_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final hasBracketlessColons:Z

.field private final host:Ljava/lang/String;

.field private final port:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 136
    const-string v0, "^\\[(.*:.*)\\](?::(\\d*))?$"

    #v0=(Reference);
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/HostAndPort;->BRACKET_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    #v1=(One);
    const/4 v2, 0x0

    .line 229
    #v2=(Null);
    if-ne p0, p1, :cond_1

    .line 238
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Boolean);v3=(Conflicted);v4=(Conflicted);
    return v1

    .line 232
    :cond_1
    #v0=(Uninit);v1=(One);v3=(Uninit);v4=(Uninit);
    instance-of v3, p1, Lcom/google/common/net/HostAndPort;

    #v3=(Boolean);
    if-eqz v3, :cond_3

    move-object v0, p1

    .line 233
    #v0=(Reference);
    check-cast v0, Lcom/google/common/net/HostAndPort;

    .line 234
    .local v0, that:Lcom/google/common/net/HostAndPort;
    iget-object v3, p0, Lcom/google/common/net/HostAndPort;->host:Ljava/lang/String;

    #v3=(Reference);
    iget-object v4, v0, Lcom/google/common/net/HostAndPort;->host:Ljava/lang/String;

    #v4=(Reference);
    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_2

    iget v3, p0, Lcom/google/common/net/HostAndPort;->port:I

    #v3=(Integer);
    iget v4, v0, Lcom/google/common/net/HostAndPort;->port:I

    #v4=(Integer);
    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/google/common/net/HostAndPort;->hasBracketlessColons:Z

    #v3=(Boolean);
    iget-boolean v4, v0, Lcom/google/common/net/HostAndPort;->hasBracketlessColons:Z

    #v4=(Boolean);
    if-eq v3, v4, :cond_0

    :cond_2
    #v3=(Integer);v4=(Conflicted);
    move v1, v2

    #v1=(Null);
    goto :goto_0

    .end local v0           #that:Lcom/google/common/net/HostAndPort;
    :cond_3
    #v0=(Uninit);v1=(One);v3=(Boolean);v4=(Uninit);
    move v1, v2

    .line 238
    #v1=(Null);
    goto :goto_0
.end method

.method public hasPort()Z
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/google/common/net/HostAndPort;->port:I

    #v0=(Integer);
    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Integer);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 243
    const/4 v0, 0x3

    #v0=(PosByte);
    new-array v0, v0, [Ljava/lang/Object;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    iget-object v2, p0, Lcom/google/common/net/HostAndPort;->host:Ljava/lang/String;

    #v2=(Reference);
    aput-object v2, v0, v1

    const/4 v1, 0x1

    #v1=(One);
    iget v2, p0, Lcom/google/common/net/HostAndPort;->port:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    aput-object v2, v0, v1

    const/4 v1, 0x2

    #v1=(PosByte);
    iget-boolean v2, p0, Lcom/google/common/net/HostAndPort;->hasBracketlessColons:Z

    #v2=(Boolean);
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #v2=(Reference);
    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x3a

    .line 249
    #v3=(PosByte);
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/google/common/net/HostAndPort;->host:Ljava/lang/String;

    #v1=(Reference);
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    #v1=(Integer);
    add-int/lit8 v1, v1, 0x7

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 250
    .local v0, builder:Ljava/lang/StringBuilder;
    #v0=(Reference);
    iget-object v1, p0, Lcom/google/common/net/HostAndPort;->host:Ljava/lang/String;

    #v1=(Reference);
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    #v1=(Integer);
    if-ltz v1, :cond_1

    .line 251
    const/16 v1, 0x5b

    #v1=(PosByte);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    #v1=(Reference);
    iget-object v2, p0, Lcom/google/common/net/HostAndPort;->host:Ljava/lang/String;

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    #v2=(PosByte);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 255
    :goto_0
    #v2=(Conflicted);
    invoke-virtual {p0}, Lcom/google/common/net/HostAndPort;->hasPort()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 256
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    #v1=(Reference);
    iget v2, p0, Lcom/google/common/net/HostAndPort;->port:I

    #v2=(Integer);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 258
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    return-object v1

    .line 253
    :cond_1
    #v1=(Integer);v2=(Uninit);
    iget-object v1, p0, Lcom/google/common/net/HostAndPort;->host:Ljava/lang/String;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
