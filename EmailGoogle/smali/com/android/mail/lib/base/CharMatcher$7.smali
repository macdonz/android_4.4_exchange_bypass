.class final Lcom/android/mail/lib/base/CharMatcher$7;
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


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 309
    invoke-direct {p0}, Lcom/android/mail/lib/base/CharMatcher;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 309
    check-cast p1, Ljava/lang/Character;

    .end local p1
    invoke-super {p0, p1}, Lcom/android/mail/lib/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public indexIn(Ljava/lang/CharSequence;)I
    .locals 1
    .parameter "sequence"

    .prologue
    .line 315
    invoke-static {p1}, Lcom/android/mail/lib/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    const/4 v0, -0x1

    #v0=(Byte);
    return v0
.end method

.method public indexIn(Ljava/lang/CharSequence;I)I
    .locals 2
    .parameter "sequence"
    .parameter "start"

    .prologue
    .line 319
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 320
    .local v0, length:I
    #v0=(Integer);
    invoke-static {p2, v0}, Lcom/android/mail/lib/base/Preconditions;->checkPositionIndex(II)I

    .line 321
    const/4 v1, -0x1

    #v1=(Byte);
    return v1
.end method

.method public matches(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 311
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public negate()Lcom/android/mail/lib/base/CharMatcher;
    .locals 1

    .prologue
    .line 365
    sget-object v0, Lcom/android/mail/lib/base/CharMatcher$7;->ANY:Lcom/android/mail/lib/base/CharMatcher;

    #v0=(Reference);
    return-object v0
.end method

.method public or(Lcom/android/mail/lib/base/CharMatcher;)Lcom/android/mail/lib/base/CharMatcher;
    .locals 1
    .parameter "other"

    .prologue
    .line 362
    invoke-static {p1}, Lcom/android/mail/lib/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/lib/base/CharMatcher;

    return-object v0
.end method

.method public precomputed()Lcom/android/mail/lib/base/CharMatcher;
    .locals 0

    .prologue
    .line 370
    return-object p0
.end method

.method protected setBits(Lcom/android/mail/lib/base/CharMatcher$LookupTable;)V
    .locals 0
    .parameter "table"

    .prologue
    .line 368
    return-void
.end method
