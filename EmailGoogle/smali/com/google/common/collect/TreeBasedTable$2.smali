.class Lcom/google/common/collect/TreeBasedTable$2;
.super Lcom/google/common/collect/AbstractIterator;
.source "TreeBasedTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/TreeBasedTable;->createColumnKeyIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator",
        "<TC;>;"
    }
.end annotation


# instance fields
.field lastValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/TreeBasedTable;

.field final synthetic val$comparator:Ljava/util/Comparator;

.field final synthetic val$merged:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeBasedTable;Ljava/util/Iterator;Ljava/util/Comparator;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 352
    .local p0, this:Lcom/google/common/collect/TreeBasedTable$2;,"Lcom/google/common/collect/TreeBasedTable.2;"
    iput-object p1, p0, Lcom/google/common/collect/TreeBasedTable$2;->this$0:Lcom/google/common/collect/TreeBasedTable;

    iput-object p2, p0, Lcom/google/common/collect/TreeBasedTable$2;->val$merged:Ljava/util/Iterator;

    iput-object p3, p0, Lcom/google/common/collect/TreeBasedTable$2;->val$comparator:Ljava/util/Comparator;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method protected computeNext()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .prologue
    .line 357
    .local p0, this:Lcom/google/common/collect/TreeBasedTable$2;,"Lcom/google/common/collect/TreeBasedTable.2;"
    :cond_0
    iget-object v2, p0, Lcom/google/common/collect/TreeBasedTable$2;->val$merged:Ljava/util/Iterator;

    #v2=(Reference);
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_2

    .line 358
    iget-object v2, p0, Lcom/google/common/collect/TreeBasedTable$2;->val$merged:Ljava/util/Iterator;

    #v2=(Reference);
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 359
    .local v1, next:Ljava/lang/Object;,"TC;"
    #v1=(Reference);
    iget-object v2, p0, Lcom/google/common/collect/TreeBasedTable$2;->lastValue:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/common/collect/TreeBasedTable$2;->val$comparator:Ljava/util/Comparator;

    iget-object v3, p0, Lcom/google/common/collect/TreeBasedTable$2;->lastValue:Ljava/lang/Object;

    #v3=(Reference);
    invoke-interface {v2, v1, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    #v2=(Integer);
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 363
    .local v0, duplicate:Z
    :goto_0
    #v0=(Boolean);v2=(Conflicted);v3=(Conflicted);
    if-nez v0, :cond_0

    .line 364
    iput-object v1, p0, Lcom/google/common/collect/TreeBasedTable$2;->lastValue:Ljava/lang/Object;

    .line 365
    iget-object v2, p0, Lcom/google/common/collect/TreeBasedTable$2;->lastValue:Ljava/lang/Object;

    .line 370
    .end local v0           #duplicate:Z
    .end local v1           #next:Ljava/lang/Object;,"TC;"
    :goto_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Reference);
    return-object v2

    .line 359
    .restart local v1       #next:Ljava/lang/Object;,"TC;"
    :cond_1
    #v1=(Reference);v2=(Conflicted);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0

    .line 369
    .end local v1           #next:Ljava/lang/Object;,"TC;"
    :cond_2
    #v0=(Conflicted);v1=(Conflicted);v2=(Boolean);
    const/4 v2, 0x0

    #v2=(Null);
    iput-object v2, p0, Lcom/google/common/collect/TreeBasedTable$2;->lastValue:Ljava/lang/Object;

    .line 370
    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable$2;->endOfData()Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    goto :goto_1
.end method
