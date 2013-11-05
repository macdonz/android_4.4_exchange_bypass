.class Lcom/google/android/mail/common/base/CharMatcher$14;
.super Lcom/google/android/mail/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/mail/common/base/CharMatcher;->negate()Lcom/google/android/mail/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/mail/common/base/CharMatcher;

.field final synthetic val$original:Lcom/google/android/mail/common/base/CharMatcher;


# direct methods
.method constructor <init>(Lcom/google/android/mail/common/base/CharMatcher;Lcom/google/android/mail/common/base/CharMatcher;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 543
    iput-object p1, p0, Lcom/google/android/mail/common/base/CharMatcher$14;->this$0:Lcom/google/android/mail/common/base/CharMatcher;

    iput-object p2, p0, Lcom/google/android/mail/common/base/CharMatcher$14;->val$original:Lcom/google/android/mail/common/base/CharMatcher;

    invoke-direct {p0}, Lcom/google/android/mail/common/base/CharMatcher;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 543
    check-cast p1, Ljava/lang/Character;

    .end local p1
    invoke-super {p0, p1}, Lcom/google/android/mail/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public matches(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 545
    iget-object v0, p0, Lcom/google/android/mail/common/base/CharMatcher$14;->val$original:Lcom/google/android/mail/common/base/CharMatcher;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Lcom/google/android/mail/common/base/CharMatcher;->matches(C)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public negate()Lcom/google/android/mail/common/base/CharMatcher;
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/google/android/mail/common/base/CharMatcher$14;->val$original:Lcom/google/android/mail/common/base/CharMatcher;

    #v0=(Reference);
    return-object v0
.end method
