.class synthetic Lcom/android/mail/lib/base/Splitter$6;
.super Ljava/lang/Object;
.source "Splitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/lib/base/Splitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$mail$lib$base$Splitter$AbstractIterator$State:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 425
    invoke-static {}, Lcom/android/mail/lib/base/Splitter$AbstractIterator$State;->values()[Lcom/android/mail/lib/base/Splitter$AbstractIterator$State;

    move-result-object v0

    #v0=(Reference);
    array-length v0, v0

    #v0=(Integer);
    new-array v0, v0, [I

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/lib/base/Splitter$6;->$SwitchMap$com$android$mail$lib$base$Splitter$AbstractIterator$State:[I

    :try_start_0
    sget-object v0, Lcom/android/mail/lib/base/Splitter$6;->$SwitchMap$com$android$mail$lib$base$Splitter$AbstractIterator$State:[I

    sget-object v1, Lcom/android/mail/lib/base/Splitter$AbstractIterator$State;->DONE:Lcom/android/mail/lib/base/Splitter$AbstractIterator$State;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/lib/base/Splitter$AbstractIterator$State;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x1

    #v2=(One);
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v0, Lcom/android/mail/lib/base/Splitter$6;->$SwitchMap$com$android$mail$lib$base$Splitter$AbstractIterator$State:[I

    sget-object v1, Lcom/android/mail/lib/base/Splitter$AbstractIterator$State;->READY:Lcom/android/mail/lib/base/Splitter$AbstractIterator$State;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/lib/base/Splitter$AbstractIterator$State;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x2

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    #v1=(Conflicted);v2=(Conflicted);
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
