.class final Lcom/android/mail/lib/base/CharMatcher$2;
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
    .line 143
    invoke-direct {p0}, Lcom/android/mail/lib/base/CharMatcher;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
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
    .line 145
    invoke-static {p1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method
