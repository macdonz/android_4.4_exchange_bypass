.class final Lcom/google/common/collect/SortedMultisets;
.super Ljava/lang/Object;
.source "SortedMultisets.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/SortedMultisets$DescendingMultiset;,
        Lcom/google/common/collect/SortedMultisets$ElementSet;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    #p0=(Reference);
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/Multiset$Entry;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-static {p0}, Lcom/google/common/collect/SortedMultisets;->getElementOrThrow(Lcom/google/common/collect/Multiset$Entry;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method private static getElementOrThrow(Lcom/google/common/collect/Multiset$Entry;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;)TE;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, entry:Lcom/google/common/collect/Multiset$Entry;,"Lcom/google/common/collect/Multiset$Entry<TE;>;"
    if-nez p0, :cond_0

    .line 75
    new-instance v0, Ljava/util/NoSuchElementException;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #v0=(Reference);
    throw v0

    .line 77
    :cond_0
    #v0=(Uninit);
    invoke-interface {p0}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method
