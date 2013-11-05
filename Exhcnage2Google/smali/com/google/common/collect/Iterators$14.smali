.class final Lcom/google/common/collect/Iterators$14;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "Iterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Iterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/UnmodifiableIterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$enumeration:Ljava/util/Enumeration;


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/google/common/collect/Iterators$14;->val$enumeration:Ljava/util/Enumeration;

    #v0=(Reference);
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/google/common/collect/Iterators$14;->val$enumeration:Ljava/util/Enumeration;

    #v0=(Reference);
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
