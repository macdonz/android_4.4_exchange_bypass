.class Lcom/google/common/collect/ImmutableSetMultimap$BuilderMultimap;
.super Lcom/google/common/collect/AbstractMultimap;
.source "ImmutableSetMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableSetMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BuilderMultimap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractMultimap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 150
    .local p0, this:Lcom/google/common/collect/ImmutableSetMultimap$BuilderMultimap;,"Lcom/google/common/collect/ImmutableSetMultimap$BuilderMultimap<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    #v0=(Reference);
    invoke-direct {p0, v0}, Lcom/google/common/collect/AbstractMultimap;-><init>(Ljava/util/Map;)V

    .line 151
    #p0=(Reference);
    return-void
.end method


# virtual methods
.method createCollection()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, this:Lcom/google/common/collect/ImmutableSetMultimap$BuilderMultimap;,"Lcom/google/common/collect/ImmutableSetMultimap$BuilderMultimap<TK;TV;>;"
    invoke-static {}, Lcom/google/common/collect/Sets;->newLinkedHashSet()Ljava/util/LinkedHashSet;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method
