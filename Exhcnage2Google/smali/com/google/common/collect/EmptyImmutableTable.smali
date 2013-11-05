.class final Lcom/google/common/collect/EmptyImmutableTable;
.super Lcom/google/common/collect/ImmutableTable;
.source "EmptyImmutableTable.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableTable",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/common/collect/EmptyImmutableTable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/google/common/collect/EmptyImmutableTable;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/google/common/collect/EmptyImmutableTable;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/google/common/collect/EmptyImmutableTable;->INSTANCE:Lcom/google/common/collect/EmptyImmutableTable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableTable;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public cellSet()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Lcom/google/common/collect/Table$Cell",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 69
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public bridge synthetic cellSet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/common/collect/EmptyImmutableTable;->cellSet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public columnMap()Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 82
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public bridge synthetic columnMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/common/collect/EmptyImmutableTable;->columnMap()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public contains(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "rowKey"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "columnKey"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 87
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "obj"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 54
    if-ne p1, p0, :cond_0

    .line 55
    const/4 v1, 0x1

    .line 60
    :goto_0
    #v0=(Conflicted);v1=(Boolean);
    return v1

    .line 56
    :cond_0
    #v0=(Uninit);v1=(Uninit);
    instance-of v1, p1, Lcom/google/common/collect/Table;

    #v1=(Boolean);
    if-eqz v1, :cond_1

    move-object v0, p1

    .line 57
    #v0=(Reference);
    check-cast v0, Lcom/google/common/collect/Table;

    .line 58
    .local v0, that:Lcom/google/common/collect/Table;,"Lcom/google/common/collect/Table<***>;"
    invoke-interface {v0}, Lcom/google/common/collect/Table;->isEmpty()Z

    move-result v1

    goto :goto_0

    .line 60
    .end local v0           #that:Lcom/google/common/collect/Table;,"Lcom/google/common/collect/Table<***>;"
    :cond_1
    #v0=(Uninit);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_0
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "rowKey"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "columnKey"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 46
    const/4 v0, 0x0

    #v0=(Null);
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method

.method public rowMap()Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 112
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public bridge synthetic rowMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/common/collect/EmptyImmutableTable;->rowMap()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    const-string v0, "{}"

    #v0=(Reference);
    return-object v0
.end method
