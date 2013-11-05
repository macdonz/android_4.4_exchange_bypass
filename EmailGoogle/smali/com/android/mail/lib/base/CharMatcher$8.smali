.class final Lcom/android/mail/lib/base/CharMatcher$8;
.super Lcom/android/mail/lib/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mail/lib/base/CharMatcher;->is(C)Lcom/android/mail/lib/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$match:C


# direct methods
.method constructor <init>(C)V
    .locals 0
    .parameter

    .prologue
    .line 380
    iput-char p1, p0, Lcom/android/mail/lib/base/CharMatcher$8;->val$match:C

    invoke-direct {p0}, Lcom/android/mail/lib/base/CharMatcher;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 380
    check-cast p1, Ljava/lang/Character;

    .end local p1
    invoke-super {p0, p1}, Lcom/android/mail/lib/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public matches(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 382
    iget-char v0, p0, Lcom/android/mail/lib/base/CharMatcher$8;->val$match:C

    #v0=(Char);
    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Char);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public negate()Lcom/android/mail/lib/base/CharMatcher;
    .locals 1

    .prologue
    .line 396
    iget-char v0, p0, Lcom/android/mail/lib/base/CharMatcher$8;->val$match:C

    #v0=(Char);
    invoke-static {v0}, Lcom/android/mail/lib/base/CharMatcher$8;->isNot(C)Lcom/android/mail/lib/base/CharMatcher;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public or(Lcom/android/mail/lib/base/CharMatcher;)Lcom/android/mail/lib/base/CharMatcher;
    .locals 1
    .parameter "other"

    .prologue
    .line 393
    iget-char v0, p0, Lcom/android/mail/lib/base/CharMatcher$8;->val$match:C

    #v0=(Char);
    invoke-virtual {p1, v0}, Lcom/android/mail/lib/base/CharMatcher;->matches(C)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/android/mail/lib/base/CharMatcher;->or(Lcom/android/mail/lib/base/CharMatcher;)Lcom/android/mail/lib/base/CharMatcher;

    move-result-object p1

    goto :goto_0
.end method

.method public precomputed()Lcom/android/mail/lib/base/CharMatcher;
    .locals 0

    .prologue
    .line 402
    return-object p0
.end method

.method protected setBits(Lcom/android/mail/lib/base/CharMatcher$LookupTable;)V
    .locals 1
    .parameter "table"

    .prologue
    .line 399
    iget-char v0, p0, Lcom/android/mail/lib/base/CharMatcher$8;->val$match:C

    #v0=(Char);
    invoke-virtual {p1, v0}, Lcom/android/mail/lib/base/CharMatcher$LookupTable;->set(C)V

    .line 400
    return-void
.end method
