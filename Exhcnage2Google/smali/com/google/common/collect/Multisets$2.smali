.class final Lcom/google/common/collect/Multisets$2;
.super Lcom/google/common/collect/Ordering;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multisets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Ordering",
        "<",
        "Lcom/google/common/collect/Multiset$Entry",
        "<*>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 953
    invoke-direct {p0}, Lcom/google/common/collect/Ordering;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public compare(Lcom/google/common/collect/Multiset$Entry;Lcom/google/common/collect/Multiset$Entry;)I
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset$Entry",
            "<*>;",
            "Lcom/google/common/collect/Multiset$Entry",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 956
    .local p1, entry1:Lcom/google/common/collect/Multiset$Entry;,"Lcom/google/common/collect/Multiset$Entry<*>;"
    .local p2, entry2:Lcom/google/common/collect/Multiset$Entry;,"Lcom/google/common/collect/Multiset$Entry<*>;"
    invoke-interface {p2}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v0

    #v0=(Integer);
    invoke-interface {p1}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v1

    #v1=(Integer);
    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->compare(II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 953
    check-cast p1, Lcom/google/common/collect/Multiset$Entry;

    .end local p1
    check-cast p2, Lcom/google/common/collect/Multiset$Entry;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Multisets$2;->compare(Lcom/google/common/collect/Multiset$Entry;Lcom/google/common/collect/Multiset$Entry;)I

    move-result v0

    #v0=(Integer);
    return v0
.end method
