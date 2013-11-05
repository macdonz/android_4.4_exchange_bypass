.class public final Lcom/android/email/provider/ContentCache$CacheToken;
.super Ljava/lang/Object;
.source "ContentCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/provider/ContentCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CacheToken"
.end annotation


# instance fields
.field private final mId:Ljava/lang/String;

.field private mIsValid:Z


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "token"

    .prologue
    .line 265
    instance-of v0, p1, Lcom/android/email/provider/ContentCache$CacheToken;

    #v0=(Boolean);
    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/email/provider/ContentCache$CacheToken;

    .end local p1
    iget-object v0, p1, Lcom/android/email/provider/ContentCache$CacheToken;->mId:Ljava/lang/String;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/email/provider/ContentCache$CacheToken;->mId:Ljava/lang/String;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v1=(Conflicted);
    return v0

    :cond_0
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/email/provider/ContentCache$CacheToken;->mId:Ljava/lang/String;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method invalidate()V
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/email/provider/ContentCache$CacheToken;->mIsValid:Z

    .line 261
    return-void
.end method
