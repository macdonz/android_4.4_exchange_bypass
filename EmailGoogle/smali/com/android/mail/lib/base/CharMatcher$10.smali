.class final Lcom/android/mail/lib/base/CharMatcher$10;
.super Lcom/android/mail/lib/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mail/lib/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/android/mail/lib/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$match1:C

.field final synthetic val$match2:C


# direct methods
.method constructor <init>(CC)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 444
    iput-char p1, p0, Lcom/android/mail/lib/base/CharMatcher$10;->val$match1:C

    iput-char p2, p0, Lcom/android/mail/lib/base/CharMatcher$10;->val$match2:C

    invoke-direct {p0}, Lcom/android/mail/lib/base/CharMatcher;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 444
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
    .line 446
    iget-char v0, p0, Lcom/android/mail/lib/base/CharMatcher$10;->val$match1:C

    #v0=(Char);
    if-eq p1, v0, :cond_0

    iget-char v0, p0, Lcom/android/mail/lib/base/CharMatcher$10;->val$match2:C

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_1
    #v0=(Char);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public precomputed()Lcom/android/mail/lib/base/CharMatcher;
    .locals 0

    .prologue
    .line 453
    return-object p0
.end method

.method protected setBits(Lcom/android/mail/lib/base/CharMatcher$LookupTable;)V
    .locals 1
    .parameter "table"

    .prologue
    .line 449
    iget-char v0, p0, Lcom/android/mail/lib/base/CharMatcher$10;->val$match1:C

    #v0=(Char);
    invoke-virtual {p1, v0}, Lcom/android/mail/lib/base/CharMatcher$LookupTable;->set(C)V

    .line 450
    iget-char v0, p0, Lcom/android/mail/lib/base/CharMatcher$10;->val$match2:C

    invoke-virtual {p1, v0}, Lcom/android/mail/lib/base/CharMatcher$LookupTable;->set(C)V

    .line 451
    return-void
.end method
