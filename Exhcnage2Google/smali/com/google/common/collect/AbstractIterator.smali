.class public abstract Lcom/google/common/collect/AbstractIterator;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "AbstractIterator.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/AbstractIterator$1;,
        Lcom/google/common/collect/AbstractIterator$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/UnmodifiableIterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private next:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private state:Lcom/google/common/collect/AbstractIterator$State;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 68
    .local p0, this:Lcom/google/common/collect/AbstractIterator;,"Lcom/google/common/collect/AbstractIterator<TT;>;"
    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    .line 65
    #p0=(Reference);
    sget-object v0, Lcom/google/common/collect/AbstractIterator$State;->NOT_READY:Lcom/google/common/collect/AbstractIterator$State;

    #v0=(Reference);
    iput-object v0, p0, Lcom/google/common/collect/AbstractIterator;->state:Lcom/google/common/collect/AbstractIterator$State;

    .line 68
    return-void
.end method

.method private tryToComputeNext()Z
    .locals 2

    .prologue
    .line 142
    .local p0, this:Lcom/google/common/collect/AbstractIterator;,"Lcom/google/common/collect/AbstractIterator<TT;>;"
    sget-object v0, Lcom/google/common/collect/AbstractIterator$State;->FAILED:Lcom/google/common/collect/AbstractIterator$State;

    #v0=(Reference);
    iput-object v0, p0, Lcom/google/common/collect/AbstractIterator;->state:Lcom/google/common/collect/AbstractIterator$State;

    .line 143
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIterator;->computeNext()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/AbstractIterator;->next:Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lcom/google/common/collect/AbstractIterator;->state:Lcom/google/common/collect/AbstractIterator$State;

    sget-object v1, Lcom/google/common/collect/AbstractIterator$State;->DONE:Lcom/google/common/collect/AbstractIterator$State;

    #v1=(Reference);
    if-eq v0, v1, :cond_0

    .line 145
    sget-object v0, Lcom/google/common/collect/AbstractIterator$State;->READY:Lcom/google/common/collect/AbstractIterator$State;

    iput-object v0, p0, Lcom/google/common/collect/AbstractIterator;->state:Lcom/google/common/collect/AbstractIterator$State;

    .line 146
    const/4 v0, 0x1

    .line 148
    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method


# virtual methods
.method protected abstract computeNext()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected final endOfData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, this:Lcom/google/common/collect/AbstractIterator;,"Lcom/google/common/collect/AbstractIterator<TT;>;"
    sget-object v0, Lcom/google/common/collect/AbstractIterator$State;->DONE:Lcom/google/common/collect/AbstractIterator$State;

    #v0=(Reference);
    iput-object v0, p0, Lcom/google/common/collect/AbstractIterator;->state:Lcom/google/common/collect/AbstractIterator$State;

    .line 125
    const/4 v0, 0x0

    #v0=(Null);
    return-object v0
.end method

.method public final hasNext()Z
    .locals 4

    .prologue
    .local p0, this:Lcom/google/common/collect/AbstractIterator;,"Lcom/google/common/collect/AbstractIterator<TT;>;"
    const/4 v1, 0x1

    #v1=(One);
    const/4 v2, 0x0

    .line 130
    #v2=(Null);
    iget-object v0, p0, Lcom/google/common/collect/AbstractIterator;->state:Lcom/google/common/collect/AbstractIterator$State;

    #v0=(Reference);
    sget-object v3, Lcom/google/common/collect/AbstractIterator$State;->FAILED:Lcom/google/common/collect/AbstractIterator$State;

    #v3=(Reference);
    if-eq v0, v3, :cond_0

    move v0, v1

    :goto_0
    #v0=(Boolean);
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 131
    sget-object v0, Lcom/google/common/collect/AbstractIterator$1;->$SwitchMap$com$google$common$collect$AbstractIterator$State:[I

    #v0=(Reference);
    iget-object v3, p0, Lcom/google/common/collect/AbstractIterator;->state:Lcom/google/common/collect/AbstractIterator$State;

    invoke-virtual {v3}, Lcom/google/common/collect/AbstractIterator$State;->ordinal()I

    move-result v3

    #v3=(Integer);
    aget v0, v0, v3

    #v0=(Integer);
    packed-switch v0, :pswitch_data_0

    .line 138
    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;->tryToComputeNext()Z

    move-result v2

    :goto_1
    :pswitch_0
    #v2=(Boolean);
    return v2

    :cond_0
    #v0=(Reference);v2=(Null);v3=(Reference);
    move v0, v2

    .line 130
    #v0=(Null);
    goto :goto_0

    :pswitch_1
    #v0=(Integer);v3=(Integer);
    move v2, v1

    .line 135
    #v2=(One);
    goto :goto_1

    .line 131
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, this:Lcom/google/common/collect/AbstractIterator;,"Lcom/google/common/collect/AbstractIterator<TT;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIterator;->hasNext()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 154
    new-instance v0, Ljava/util/NoSuchElementException;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #v0=(Reference);
    throw v0

    .line 156
    :cond_0
    #v0=(Boolean);
    sget-object v0, Lcom/google/common/collect/AbstractIterator$State;->NOT_READY:Lcom/google/common/collect/AbstractIterator$State;

    #v0=(Reference);
    iput-object v0, p0, Lcom/google/common/collect/AbstractIterator;->state:Lcom/google/common/collect/AbstractIterator$State;

    .line 157
    iget-object v0, p0, Lcom/google/common/collect/AbstractIterator;->next:Ljava/lang/Object;

    return-object v0
.end method
