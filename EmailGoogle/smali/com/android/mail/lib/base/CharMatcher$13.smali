.class final Lcom/android/mail/lib/base/CharMatcher$13;
.super Lcom/android/mail/lib/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/lib/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$predicate:Lcom/android/mail/lib/base/Predicate;


# virtual methods
.method public apply(Ljava/lang/Character;)Z
    .locals 2
    .parameter "character"

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/mail/lib/base/CharMatcher$13;->val$predicate:Lcom/android/mail/lib/base/Predicate;

    #v0=(Reference);
    invoke-static {p1}, Lcom/android/mail/lib/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    invoke-interface {v0, v1}, Lcom/android/mail/lib/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 521
    check-cast p1, Ljava/lang/Character;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mail/lib/base/CharMatcher$13;->apply(Ljava/lang/Character;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public matches(C)Z
    .locals 2
    .parameter "c"

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/mail/lib/base/CharMatcher$13;->val$predicate:Lcom/android/mail/lib/base/Predicate;

    #v0=(Reference);
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    #v1=(Reference);
    invoke-interface {v0, v1}, Lcom/android/mail/lib/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method
