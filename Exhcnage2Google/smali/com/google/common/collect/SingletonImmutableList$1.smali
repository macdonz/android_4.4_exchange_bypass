.class Lcom/google/common/collect/SingletonImmutableList$1;
.super Lcom/google/common/collect/UnmodifiableListIterator;
.source "SingletonImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/SingletonImmutableList;->listIterator(I)Lcom/google/common/collect/UnmodifiableListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/UnmodifiableListIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field hasNext:Z

.field final synthetic this$0:Lcom/google/common/collect/SingletonImmutableList;

.field final synthetic val$start:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/SingletonImmutableList;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 64
    .local p0, this:Lcom/google/common/collect/SingletonImmutableList$1;,"Lcom/google/common/collect/SingletonImmutableList.1;"
    iput-object p1, p0, Lcom/google/common/collect/SingletonImmutableList$1;->this$0:Lcom/google/common/collect/SingletonImmutableList;

    iput p2, p0, Lcom/google/common/collect/SingletonImmutableList$1;->val$start:I

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableListIterator;-><init>()V

    .line 66
    #p0=(Reference);
    iget v0, p0, Lcom/google/common/collect/SingletonImmutableList$1;->val$start:I

    #v0=(Integer);
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/google/common/collect/SingletonImmutableList$1;->hasNext:Z

    return-void

    :cond_0
    #v0=(Integer);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 69
    .local p0, this:Lcom/google/common/collect/SingletonImmutableList$1;,"Lcom/google/common/collect/SingletonImmutableList.1;"
    iget-boolean v0, p0, Lcom/google/common/collect/SingletonImmutableList$1;->hasNext:Z

    #v0=(Boolean);
    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 73
    .local p0, this:Lcom/google/common/collect/SingletonImmutableList$1;,"Lcom/google/common/collect/SingletonImmutableList.1;"
    iget-boolean v0, p0, Lcom/google/common/collect/SingletonImmutableList$1;->hasNext:Z

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

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, this:Lcom/google/common/collect/SingletonImmutableList$1;,"Lcom/google/common/collect/SingletonImmutableList.1;"
    iget-boolean v0, p0, Lcom/google/common/collect/SingletonImmutableList$1;->hasNext:Z

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 78
    new-instance v0, Ljava/util/NoSuchElementException;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #v0=(Reference);
    throw v0

    .line 80
    :cond_0
    #v0=(Boolean);
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/google/common/collect/SingletonImmutableList$1;->hasNext:Z

    .line 81
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableList$1;->this$0:Lcom/google/common/collect/SingletonImmutableList;

    #v0=(Reference);
    iget-object v0, v0, Lcom/google/common/collect/SingletonImmutableList;->element:Ljava/lang/Object;

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 85
    .local p0, this:Lcom/google/common/collect/SingletonImmutableList$1;,"Lcom/google/common/collect/SingletonImmutableList.1;"
    iget-boolean v0, p0, Lcom/google/common/collect/SingletonImmutableList$1;->hasNext:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    #v0=(One);
    goto :goto_0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, this:Lcom/google/common/collect/SingletonImmutableList$1;,"Lcom/google/common/collect/SingletonImmutableList.1;"
    iget-boolean v0, p0, Lcom/google/common/collect/SingletonImmutableList$1;->hasNext:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Ljava/util/NoSuchElementException;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #v0=(Reference);
    throw v0

    .line 92
    :cond_0
    #v0=(Boolean);
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/google/common/collect/SingletonImmutableList$1;->hasNext:Z

    .line 93
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableList$1;->this$0:Lcom/google/common/collect/SingletonImmutableList;

    #v0=(Reference);
    iget-object v0, v0, Lcom/google/common/collect/SingletonImmutableList;->element:Ljava/lang/Object;

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 97
    .local p0, this:Lcom/google/common/collect/SingletonImmutableList$1;,"Lcom/google/common/collect/SingletonImmutableList.1;"
    iget-boolean v0, p0, Lcom/google/common/collect/SingletonImmutableList$1;->hasNext:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    #v0=(Byte);
    return v0

    :cond_0
    #v0=(Boolean);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method
