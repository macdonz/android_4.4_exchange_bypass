.class abstract Lcom/google/android/mail/common/base/Splitter$AbstractIterator;
.super Ljava/lang/Object;
.source "Splitter.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/mail/common/base/Splitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AbstractIterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/mail/common/base/Splitter$AbstractIterator$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field next:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field state:Lcom/google/android/mail/common/base/Splitter$AbstractIterator$State;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 407
    .local p0, this:Lcom/google/android/mail/common/base/Splitter$AbstractIterator;,"Lcom/google/android/mail/common/base/Splitter$AbstractIterator<TT;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 408
    #p0=(Reference);
    sget-object v0, Lcom/google/android/mail/common/base/Splitter$AbstractIterator$State;->NOT_READY:Lcom/google/android/mail/common/base/Splitter$AbstractIterator$State;

    #v0=(Reference);
    iput-object v0, p0, Lcom/google/android/mail/common/base/Splitter$AbstractIterator;->state:Lcom/google/android/mail/common/base/Splitter$AbstractIterator$State;

    .line 410
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/mail/common/base/Splitter$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 407
    .local p0, this:Lcom/google/android/mail/common/base/Splitter$AbstractIterator;,"Lcom/google/android/mail/common/base/Splitter$AbstractIterator<TT;>;"
    invoke-direct {p0}, Lcom/google/android/mail/common/base/Splitter$AbstractIterator;-><init>()V

    #p0=(Reference);
    return-void
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
    .line 419
    .local p0, this:Lcom/google/android/mail/common/base/Splitter$AbstractIterator;,"Lcom/google/android/mail/common/base/Splitter$AbstractIterator<TT;>;"
    sget-object v0, Lcom/google/android/mail/common/base/Splitter$AbstractIterator$State;->DONE:Lcom/google/android/mail/common/base/Splitter$AbstractIterator$State;

    #v0=(Reference);
    iput-object v0, p0, Lcom/google/android/mail/common/base/Splitter$AbstractIterator;->state:Lcom/google/android/mail/common/base/Splitter$AbstractIterator$State;

    .line 420
    const/4 v0, 0x0

    #v0=(Null);
    return-object v0
.end method

.method public final hasNext()Z
    .locals 4

    .prologue
    .local p0, this:Lcom/google/android/mail/common/base/Splitter$AbstractIterator;,"Lcom/google/android/mail/common/base/Splitter$AbstractIterator<TT;>;"
    const/4 v1, 0x1

    #v1=(One);
    const/4 v2, 0x0

    .line 424
    #v2=(Null);
    iget-object v0, p0, Lcom/google/android/mail/common/base/Splitter$AbstractIterator;->state:Lcom/google/android/mail/common/base/Splitter$AbstractIterator$State;

    #v0=(Reference);
    sget-object v3, Lcom/google/android/mail/common/base/Splitter$AbstractIterator$State;->FAILED:Lcom/google/android/mail/common/base/Splitter$AbstractIterator$State;

    #v3=(Reference);
    if-eq v0, v3, :cond_0

    move v0, v1

    :goto_0
    #v0=(Boolean);
    invoke-static {v0}, Lcom/google/android/mail/common/base/Preconditions;->checkState(Z)V

    .line 425
    sget-object v0, Lcom/google/android/mail/common/base/Splitter$6;->$SwitchMap$com$google$android$mail$common$base$Splitter$AbstractIterator$State:[I

    #v0=(Reference);
    iget-object v3, p0, Lcom/google/android/mail/common/base/Splitter$AbstractIterator;->state:Lcom/google/android/mail/common/base/Splitter$AbstractIterator$State;

    invoke-virtual {v3}, Lcom/google/android/mail/common/base/Splitter$AbstractIterator$State;->ordinal()I

    move-result v3

    #v3=(Integer);
    aget v0, v0, v3

    #v0=(Integer);
    packed-switch v0, :pswitch_data_0

    .line 432
    invoke-virtual {p0}, Lcom/google/android/mail/common/base/Splitter$AbstractIterator;->tryToComputeNext()Z

    move-result v2

    :goto_1
    :pswitch_0
    #v2=(Boolean);
    return v2

    :cond_0
    #v0=(Reference);v2=(Null);v3=(Reference);
    move v0, v2

    .line 424
    #v0=(Null);
    goto :goto_0

    :pswitch_1
    #v0=(Integer);v3=(Integer);
    move v2, v1

    .line 429
    #v2=(One);
    goto :goto_1

    .line 425
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
    .line 446
    .local p0, this:Lcom/google/android/mail/common/base/Splitter$AbstractIterator;,"Lcom/google/android/mail/common/base/Splitter$AbstractIterator<TT;>;"
    invoke-virtual {p0}, Lcom/google/android/mail/common/base/Splitter$AbstractIterator;->hasNext()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 447
    new-instance v0, Ljava/util/NoSuchElementException;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #v0=(Reference);
    throw v0

    .line 449
    :cond_0
    #v0=(Boolean);
    sget-object v0, Lcom/google/android/mail/common/base/Splitter$AbstractIterator$State;->NOT_READY:Lcom/google/android/mail/common/base/Splitter$AbstractIterator$State;

    #v0=(Reference);
    iput-object v0, p0, Lcom/google/android/mail/common/base/Splitter$AbstractIterator;->state:Lcom/google/android/mail/common/base/Splitter$AbstractIterator$State;

    .line 450
    iget-object v0, p0, Lcom/google/android/mail/common/base/Splitter$AbstractIterator;->next:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 454
    .local p0, this:Lcom/google/android/mail/common/base/Splitter$AbstractIterator;,"Lcom/google/android/mail/common/base/Splitter$AbstractIterator<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #v0=(Reference);
    throw v0
.end method

.method tryToComputeNext()Z
    .locals 2

    .prologue
    .line 436
    .local p0, this:Lcom/google/android/mail/common/base/Splitter$AbstractIterator;,"Lcom/google/android/mail/common/base/Splitter$AbstractIterator<TT;>;"
    sget-object v0, Lcom/google/android/mail/common/base/Splitter$AbstractIterator$State;->FAILED:Lcom/google/android/mail/common/base/Splitter$AbstractIterator$State;

    #v0=(Reference);
    iput-object v0, p0, Lcom/google/android/mail/common/base/Splitter$AbstractIterator;->state:Lcom/google/android/mail/common/base/Splitter$AbstractIterator$State;

    .line 437
    invoke-virtual {p0}, Lcom/google/android/mail/common/base/Splitter$AbstractIterator;->computeNext()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mail/common/base/Splitter$AbstractIterator;->next:Ljava/lang/Object;

    .line 438
    iget-object v0, p0, Lcom/google/android/mail/common/base/Splitter$AbstractIterator;->state:Lcom/google/android/mail/common/base/Splitter$AbstractIterator$State;

    sget-object v1, Lcom/google/android/mail/common/base/Splitter$AbstractIterator$State;->DONE:Lcom/google/android/mail/common/base/Splitter$AbstractIterator$State;

    #v1=(Reference);
    if-eq v0, v1, :cond_0

    .line 439
    sget-object v0, Lcom/google/android/mail/common/base/Splitter$AbstractIterator$State;->READY:Lcom/google/android/mail/common/base/Splitter$AbstractIterator$State;

    iput-object v0, p0, Lcom/google/android/mail/common/base/Splitter$AbstractIterator;->state:Lcom/google/android/mail/common/base/Splitter$AbstractIterator$State;

    .line 440
    const/4 v0, 0x1

    .line 442
    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method
