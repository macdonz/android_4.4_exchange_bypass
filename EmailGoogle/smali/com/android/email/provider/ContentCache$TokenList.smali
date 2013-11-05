.class Lcom/android/email/provider/ContentCache$TokenList;
.super Ljava/util/ArrayList;
.source "ContentCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/provider/ContentCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TokenList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/email/provider/ContentCache$CacheToken;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mLogTag:Ljava/lang/String;


# virtual methods
.method invalidate()V
    .locals 3

    .prologue
    .line 207
    sget-boolean v2, Lcom/android/email2/ui/MailActivityEmail;->DEBUG:Z

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/provider/ContentCache$TokenList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    #v0=(Reference);v1=(Conflicted);
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/email/provider/ContentCache$CacheToken;

    .line 211
    .local v1, token:Lcom/android/email/provider/ContentCache$CacheToken;
    invoke-virtual {v1}, Lcom/android/email/provider/ContentCache$CacheToken;->invalidate()V

    goto :goto_0

    .line 213
    .end local v1           #token:Lcom/android/email/provider/ContentCache$CacheToken;
    :cond_1
    #v1=(Conflicted);
    invoke-virtual {p0}, Lcom/android/email/provider/ContentCache$TokenList;->clear()V

    .line 214
    return-void
.end method
