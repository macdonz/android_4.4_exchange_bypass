.class Lcom/android/mail/lib/base/CharMatcher$And;
.super Lcom/android/mail/lib/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/lib/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "And"
.end annotation


# instance fields
.field components:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/lib/base/CharMatcher;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 571
    check-cast p1, Ljava/lang/Character;

    .end local p1
    invoke-super {p0, p1}, Lcom/android/mail/lib/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public matches(C)Z
    .locals 3
    .parameter "c"

    .prologue
    .line 579
    iget-object v2, p0, Lcom/android/mail/lib/base/CharMatcher$And;->components:Ljava/util/List;

    #v2=(Reference);
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    #v0=(Reference);v1=(Conflicted);v2=(Conflicted);
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/mail/lib/base/CharMatcher;

    .line 580
    .local v1, matcher:Lcom/android/mail/lib/base/CharMatcher;
    invoke-virtual {v1, p1}, Lcom/android/mail/lib/base/CharMatcher;->matches(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 581
    const/4 v2, 0x0

    .line 584
    .end local v1           #matcher:Lcom/android/mail/lib/base/CharMatcher;
    :goto_0
    #v1=(Conflicted);
    return v2

    :cond_1
    const/4 v2, 0x1

    #v2=(One);
    goto :goto_0
.end method
