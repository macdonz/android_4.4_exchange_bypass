.class Lcom/android/mail/lib/base/CharMatcher$Or;
.super Lcom/android/mail/lib/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/lib/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Or"
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


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/lib/base/CharMatcher;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 605
    .local p1, components:Ljava/util/List;,"Ljava/util/List<Lcom/android/mail/lib/base/CharMatcher;>;"
    invoke-direct {p0}, Lcom/android/mail/lib/base/CharMatcher;-><init>()V

    .line 606
    #p0=(Reference);
    iput-object p1, p0, Lcom/android/mail/lib/base/CharMatcher$Or;->components:Ljava/util/List;

    .line 607
    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 602
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
    .line 610
    iget-object v2, p0, Lcom/android/mail/lib/base/CharMatcher$Or;->components:Ljava/util/List;

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

    .line 611
    .local v1, matcher:Lcom/android/mail/lib/base/CharMatcher;
    invoke-virtual {v1, p1}, Lcom/android/mail/lib/base/CharMatcher;->matches(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 612
    const/4 v2, 0x1

    .line 615
    .end local v1           #matcher:Lcom/android/mail/lib/base/CharMatcher;
    :goto_0
    #v1=(Conflicted);
    return v2

    :cond_1
    const/4 v2, 0x0

    #v2=(Null);
    goto :goto_0
.end method

.method public or(Lcom/android/mail/lib/base/CharMatcher;)Lcom/android/mail/lib/base/CharMatcher;
    .locals 2
    .parameter "other"

    .prologue
    .line 619
    new-instance v0, Ljava/util/ArrayList;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/android/mail/lib/base/CharMatcher$Or;->components:Ljava/util/List;

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 620
    .local v0, newComponents:Ljava/util/List;,"Ljava/util/List<Lcom/android/mail/lib/base/CharMatcher;>;"
    #v0=(Reference);
    invoke-static {p1}, Lcom/android/mail/lib/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 621
    new-instance v1, Lcom/android/mail/lib/base/CharMatcher$Or;

    #v1=(UninitRef);
    invoke-direct {v1, v0}, Lcom/android/mail/lib/base/CharMatcher$Or;-><init>(Ljava/util/List;)V

    #v1=(Reference);
    return-object v1
.end method

.method protected setBits(Lcom/android/mail/lib/base/CharMatcher$LookupTable;)V
    .locals 3
    .parameter "table"

    .prologue
    .line 625
    iget-object v2, p0, Lcom/android/mail/lib/base/CharMatcher$Or;->components:Ljava/util/List;

    #v2=(Reference);
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    #v0=(Reference);v1=(Conflicted);v2=(Conflicted);
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/mail/lib/base/CharMatcher;

    .line 626
    .local v1, matcher:Lcom/android/mail/lib/base/CharMatcher;
    invoke-virtual {v1, p1}, Lcom/android/mail/lib/base/CharMatcher;->setBits(Lcom/android/mail/lib/base/CharMatcher$LookupTable;)V

    goto :goto_0

    .line 628
    .end local v1           #matcher:Lcom/android/mail/lib/base/CharMatcher;
    :cond_0
    #v1=(Conflicted);
    return-void
.end method
