.class Lcom/android/mail/lib/base/CharMatcher$15;
.super Lcom/android/mail/lib/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mail/lib/base/CharMatcher;->precomputedInternal()Lcom/android/mail/lib/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/lib/base/CharMatcher;

.field final synthetic val$table:Lcom/android/mail/lib/base/CharMatcher$LookupTable;


# direct methods
.method constructor <init>(Lcom/android/mail/lib/base/CharMatcher;Lcom/android/mail/lib/base/CharMatcher$LookupTable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 662
    iput-object p1, p0, Lcom/android/mail/lib/base/CharMatcher$15;->this$0:Lcom/android/mail/lib/base/CharMatcher;

    iput-object p2, p0, Lcom/android/mail/lib/base/CharMatcher$15;->val$table:Lcom/android/mail/lib/base/CharMatcher$LookupTable;

    invoke-direct {p0}, Lcom/android/mail/lib/base/CharMatcher;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 662
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
    .line 664
    iget-object v0, p0, Lcom/android/mail/lib/base/CharMatcher$15;->val$table:Lcom/android/mail/lib/base/CharMatcher$LookupTable;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Lcom/android/mail/lib/base/CharMatcher$LookupTable;->get(C)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public precomputed()Lcom/android/mail/lib/base/CharMatcher;
    .locals 0

    .prologue
    .line 670
    return-object p0
.end method
