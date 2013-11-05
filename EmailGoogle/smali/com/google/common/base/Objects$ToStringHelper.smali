.class public final Lcom/google/common/base/Objects$ToStringHelper;
.super Ljava/lang/Object;
.source "Objects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Objects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ToStringHelper"
.end annotation


# instance fields
.field private final builder:Ljava/lang/StringBuilder;

.field private needsSeparator:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 190
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 185
    #p0=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/google/common/base/Objects$ToStringHelper;->needsSeparator:Z

    .line 191
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    const/16 v1, 0x20

    #v1=(PosByte);
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #v0=(Reference);
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/base/Objects$ToStringHelper;->builder:Ljava/lang/StringBuilder;

    .line 193
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/common/base/Objects$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/google/common/base/Objects$ToStringHelper;-><init>(Ljava/lang/String;)V

    #p0=(Reference);
    return-void
.end method

.method private checkNameAndAppend(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 2
    .parameter "name"

    .prologue
    .line 272
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    invoke-direct {p0}, Lcom/google/common/base/Objects$ToStringHelper;->maybeAppendSeparator()Ljava/lang/StringBuilder;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    #v1=(PosByte);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method private maybeAppendSeparator()Ljava/lang/StringBuilder;
    .locals 2

    .prologue
    .line 380
    iget-boolean v0, p0, Lcom/google/common/base/Objects$ToStringHelper;->needsSeparator:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/google/common/base/Objects$ToStringHelper;->builder:Ljava/lang/StringBuilder;

    #v0=(Reference);
    const-string v1, ", "

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 384
    :goto_0
    #v1=(Conflicted);
    return-object v0

    .line 383
    :cond_0
    #v0=(Boolean);v1=(Uninit);
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/google/common/base/Objects$ToStringHelper;->needsSeparator:Z

    .line 384
    iget-object v0, p0, Lcom/google/common/base/Objects$ToStringHelper;->builder:Ljava/lang/StringBuilder;

    #v0=(Reference);
    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 256
    invoke-direct {p0, p1}, Lcom/google/common/base/Objects$ToStringHelper;->checkNameAndAppend(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 257
    return-object p0
.end method

.method public add(Ljava/lang/String;J)Lcom/google/common/base/Objects$ToStringHelper;
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 267
    invoke-direct {p0, p1}, Lcom/google/common/base/Objects$ToStringHelper;->checkNameAndAppend(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 268
    return-object p0
.end method

.method public add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;
    .locals 1
    .parameter "name"
    .end parameter
    .parameter "value"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 201
    invoke-direct {p0, p1}, Lcom/google/common/base/Objects$ToStringHelper;->checkNameAndAppend(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 202
    return-object p0
.end method

.method public addValue(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;
    .locals 1
    .parameter "value"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 283
    invoke-direct {p0}, Lcom/google/common/base/Objects$ToStringHelper;->maybeAppendSeparator()Ljava/lang/StringBuilder;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 284
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 371
    :try_start_0
    iget-object v0, p0, Lcom/google/common/base/Objects$ToStringHelper;->builder:Ljava/lang/StringBuilder;

    #v0=(Reference);
    const/16 v1, 0x7d

    #v1=(PosByte);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 375
    iget-object v1, p0, Lcom/google/common/base/Objects$ToStringHelper;->builder:Ljava/lang/StringBuilder;

    #v1=(Reference);
    iget-object v2, p0, Lcom/google/common/base/Objects$ToStringHelper;->builder:Ljava/lang/StringBuilder;

    #v2=(Reference);
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    #v2=(Integer);
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    return-object v0

    :catchall_0
    move-exception v0

    #v0=(Reference);
    iget-object v1, p0, Lcom/google/common/base/Objects$ToStringHelper;->builder:Ljava/lang/StringBuilder;

    #v1=(Reference);
    iget-object v2, p0, Lcom/google/common/base/Objects$ToStringHelper;->builder:Ljava/lang/StringBuilder;

    #v2=(Reference);
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    #v2=(Integer);
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    throw v0
.end method
