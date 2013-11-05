.class Lcom/google/common/collect/Multimaps$MapMultimap;
.super Ljava/lang/Object;
.source "Multimaps.java"

# interfaces
.implements Lcom/google/common/collect/SetMultimap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multimaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MapMultimap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Multimaps$MapMultimap$AsMap;,
        Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/SetMultimap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final JOINER:Lcom/google/common/base/Joiner$MapJoiner; = null

.field private static final serialVersionUID:J = 0x6cdfd44a398c560fL


# instance fields
.field transient asMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1181
    const-string v0, "], "

    #v0=(Reference);
    invoke-static {v0}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    const-string v1, "=["

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/google/common/base/Joiner;->withKeyValueSeparator(Ljava/lang/String;)Lcom/google/common/base/Joiner$MapJoiner;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Lcom/google/common/base/Joiner$MapJoiner;->useForNull(Ljava/lang/String;)Lcom/google/common/base/Joiner$MapJoiner;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/Multimaps$MapMultimap;->JOINER:Lcom/google/common/base/Joiner$MapJoiner;

    return-void
.end method


# virtual methods
.method public asMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1159
    .local p0, this:Lcom/google/common/collect/Multimaps$MapMultimap;,"Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->asMap:Ljava/util/Map;

    .line 1160
    .local v0, result:Ljava/util/Map;,"Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    #v0=(Reference);
    if-nez v0, :cond_0

    .line 1161
    new-instance v0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMap;

    .end local v0           #result:Ljava/util/Map;,"Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/google/common/collect/Multimaps$MapMultimap$AsMap;-><init>(Lcom/google/common/collect/Multimaps$MapMultimap;)V

    .restart local v0       #result:Ljava/util/Map;,"Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    #v0=(Reference);
    iput-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->asMap:Ljava/util/Map;

    .line 1163
    :cond_0
    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 1134
    .local p0, this:Lcom/google/common/collect/Multimaps$MapMultimap;,"Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    #v0=(Reference);
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1135
    return-void
.end method

.method public containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1058
    .local p0, this:Lcom/google/common/collect/Multimaps$MapMultimap;,"Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    #v0=(Reference);
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    #v1=(Reference);
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 1048
    .local p0, this:Lcom/google/common/collect/Multimaps$MapMultimap;,"Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    #v0=(Reference);
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 1053
    .local p0, this:Lcom/google/common/collect/Multimaps$MapMultimap;,"Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    #v0=(Reference);
    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public bridge synthetic entries()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 1027
    .local p0, this:Lcom/google/common/collect/Multimaps$MapMultimap;,"Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$MapMultimap;->entries()Ljava/util/Set;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public entries()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1154
    .local p0, this:Lcom/google/common/collect/Multimaps$MapMultimap;,"Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    #v0=(Reference);
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "object"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .local p0, this:Lcom/google/common/collect/Multimaps$MapMultimap;,"Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>;"
    const/4 v1, 0x1

    #v1=(One);
    const/4 v2, 0x0

    .line 1167
    #v2=(Null);
    if-ne p1, p0, :cond_1

    .line 1174
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Boolean);v3=(Conflicted);v4=(Conflicted);
    return v1

    .line 1170
    :cond_1
    #v0=(Uninit);v1=(One);v3=(Uninit);v4=(Uninit);
    instance-of v3, p1, Lcom/google/common/collect/Multimap;

    #v3=(Boolean);
    if-eqz v3, :cond_3

    move-object v0, p1

    .line 1171
    #v0=(Reference);
    check-cast v0, Lcom/google/common/collect/Multimap;

    .line 1172
    .local v0, that:Lcom/google/common/collect/Multimap;,"Lcom/google/common/collect/Multimap<**>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$MapMultimap;->size()I

    move-result v3

    #v3=(Integer);
    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->size()I

    move-result v4

    #v4=(Integer);
    if-ne v3, v4, :cond_2

    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$MapMultimap;->asMap()Ljava/util/Map;

    move-result-object v3

    #v3=(Reference);
    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_0

    :cond_2
    #v3=(Integer);v4=(Conflicted);
    move v1, v2

    #v1=(Null);
    goto :goto_0

    .end local v0           #that:Lcom/google/common/collect/Multimap;,"Lcom/google/common/collect/Multimap<**>;"
    :cond_3
    #v0=(Uninit);v1=(One);v3=(Boolean);v4=(Uninit);
    move v1, v2

    .line 1174
    #v1=(Null);
    goto :goto_0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1027
    .local p0, this:Lcom/google/common/collect/Multimaps$MapMultimap;,"Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$MapMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1063
    .local p0, this:Lcom/google/common/collect/Multimaps$MapMultimap;,"Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    new-instance v0, Lcom/google/common/collect/Multimaps$MapMultimap$1;

    #v0=(UninitRef);
    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Multimaps$MapMultimap$1;-><init>(Lcom/google/common/collect/Multimaps$MapMultimap;Ljava/lang/Object;)V

    #v0=(Reference);
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1178
    .local p0, this:Lcom/google/common/collect/Multimaps$MapMultimap;,"Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1043
    .local p0, this:Lcom/google/common/collect/Multimaps$MapMultimap;,"Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    #v0=(Reference);
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1139
    .local p0, this:Lcom/google/common/collect/Multimaps$MapMultimap;,"Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    #v0=(Reference);
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1119
    .local p0, this:Lcom/google/common/collect/Multimaps$MapMultimap;,"Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    #v0=(Reference);
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    #v1=(Reference);
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1027
    .local p0, this:Lcom/google/common/collect/Multimaps$MapMultimap;,"Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$MapMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Set;
    .locals 2
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1124
    .local p0, this:Lcom/google/common/collect/Multimaps$MapMultimap;,"Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>;"
    new-instance v0, Ljava/util/HashSet;

    #v0=(UninitRef);
    const/4 v1, 0x2

    #v1=(PosByte);
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 1125
    .local v0, values:Ljava/util/Set;,"Ljava/util/Set<TV;>;"
    #v0=(Reference);
    iget-object v1, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    #v1=(Reference);
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_0

    .line 1129
    :goto_0
    #v1=(Conflicted);
    return-object v0

    .line 1128
    :cond_0
    #v1=(Boolean);
    iget-object v1, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    #v1=(Reference);
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1038
    .local p0, this:Lcom/google/common/collect/Multimaps$MapMultimap;,"Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    #v0=(Reference);
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1185
    .local p0, this:Lcom/google/common/collect/Multimaps$MapMultimap;,"Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    #v1=(Reference);
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 1186
    const-string v1, "{}"

    .line 1191
    :goto_0
    #v0=(Conflicted);v1=(Reference);v2=(Conflicted);
    return-object v1

    .line 1188
    :cond_0
    #v0=(Uninit);v1=(Boolean);v2=(Uninit);
    iget-object v1, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    #v1=(Reference);
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    #v1=(Integer);
    invoke-static {v1}, Lcom/google/common/collect/Collections2;->newStringBuilderForCollection(I)Ljava/lang/StringBuilder;

    move-result-object v1

    #v1=(Reference);
    const/16 v2, 0x7b

    #v2=(PosByte);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1190
    .local v0, builder:Ljava/lang/StringBuilder;
    #v0=(Reference);
    sget-object v1, Lcom/google/common/collect/Multimaps$MapMultimap;->JOINER:Lcom/google/common/base/Joiner$MapJoiner;

    iget-object v2, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    #v2=(Reference);
    invoke-virtual {v1, v0, v2}, Lcom/google/common/base/Joiner$MapJoiner;->appendTo(Ljava/lang/StringBuilder;Ljava/util/Map;)Ljava/lang/StringBuilder;

    .line 1191
    const-string v1, "]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
