.class Lcom/android/mail/lib/base/CharMatcher$14;
.super Lcom/android/mail/lib/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mail/lib/base/CharMatcher;->negate()Lcom/android/mail/lib/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/lib/base/CharMatcher;

.field final synthetic val$original:Lcom/android/mail/lib/base/CharMatcher;


# direct methods
.method constructor <init>(Lcom/android/mail/lib/base/CharMatcher;Lcom/android/mail/lib/base/CharMatcher;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 543
    iput-object p1, p0, Lcom/android/mail/lib/base/CharMatcher$14;->this$0:Lcom/android/mail/lib/base/CharMatcher;

    iput-object p2, p0, Lcom/android/mail/lib/base/CharMatcher$14;->val$original:Lcom/android/mail/lib/base/CharMatcher;

    invoke-direct {p0}, Lcom/android/mail/lib/base/CharMatcher;-><init>()V

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
    invoke-super {p0, p1}, Lcom/android/mail/lib/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public matches(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/mail/lib/base/CharMatcher$14;->val$original:Lcom/android/mail/lib/base/CharMatcher;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Lcom/android/mail/lib/base/CharMatcher;->matches(C)Z

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

.method public negate()Lcom/android/mail/lib/base/CharMatcher;
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/mail/lib/base/CharMatcher$14;->val$original:Lcom/android/mail/lib/base/CharMatcher;

    #v0=(Reference);
    return-object v0
.end method
