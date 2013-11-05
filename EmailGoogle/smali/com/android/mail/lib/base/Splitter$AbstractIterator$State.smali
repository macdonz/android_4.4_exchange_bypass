.class final enum Lcom/android/mail/lib/base/Splitter$AbstractIterator$State;
.super Ljava/lang/Enum;
.source "Splitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/lib/base/Splitter$AbstractIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/mail/lib/base/Splitter$AbstractIterator$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/mail/lib/base/Splitter$AbstractIterator$State;

.field public static final enum DONE:Lcom/android/mail/lib/base/Splitter$AbstractIterator$State;

.field public static final enum FAILED:Lcom/android/mail/lib/base/Splitter$AbstractIterator$State;

.field public static final enum NOT_READY:Lcom/android/mail/lib/base/Splitter$AbstractIterator$State;

.field public static final enum READY:Lcom/android/mail/lib/base/Splitter$AbstractIterator$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    #v5=(PosByte);
    const/4 v4, 0x2

    #v4=(PosByte);
    const/4 v3, 0x1

    #v3=(One);
    const/4 v2, 0x0

    .line 411
    #v2=(Null);
    new-instance v0, Lcom/android/mail/lib/base/Splitter$AbstractIterator$State;

    #v0=(UninitRef);
    const-string v1, "READY"

    #v1=(Reference);
    invoke-direct {v0, v1, v2}, Lcom/android/mail/lib/base/Splitter$AbstractIterator$State;-><init>(Ljava/lang/String;I)V

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/lib/base/Splitter$AbstractIterator$State;->READY:Lcom/android/mail/lib/base/Splitter$AbstractIterator$State;

    new-instance v0, Lcom/android/mail/lib/base/Splitter$AbstractIterator$State;

    #v0=(UninitRef);
    const-string v1, "NOT_READY"

    invoke-direct {v0, v1, v3}, Lcom/android/mail/lib/base/Splitter$AbstractIterator$State;-><init>(Ljava/lang/String;I)V

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/lib/base/Splitter$AbstractIterator$State;->NOT_READY:Lcom/android/mail/lib/base/Splitter$AbstractIterator$State;

    new-instance v0, Lcom/android/mail/lib/base/Splitter$AbstractIterator$State;

    #v0=(UninitRef);
    const-string v1, "DONE"

    invoke-direct {v0, v1, v4}, Lcom/android/mail/lib/base/Splitter$AbstractIterator$State;-><init>(Ljava/lang/String;I)V

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/lib/base/Splitter$AbstractIterator$State;->DONE:Lcom/android/mail/lib/base/Splitter$AbstractIterator$State;

    new-instance v0, Lcom/android/mail/lib/base/Splitter$AbstractIterator$State;

    #v0=(UninitRef);
    const-string v1, "FAILED"

    invoke-direct {v0, v1, v5}, Lcom/android/mail/lib/base/Splitter$AbstractIterator$State;-><init>(Ljava/lang/String;I)V

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/lib/base/Splitter$AbstractIterator$State;->FAILED:Lcom/android/mail/lib/base/Splitter$AbstractIterator$State;

    .line 410
    const/4 v0, 0x4

    #v0=(PosByte);
    new-array v0, v0, [Lcom/android/mail/lib/base/Splitter$AbstractIterator$State;

    #v0=(Reference);
    sget-object v1, Lcom/android/mail/lib/base/Splitter$AbstractIterator$State;->READY:Lcom/android/mail/lib/base/Splitter$AbstractIterator$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/mail/lib/base/Splitter$AbstractIterator$State;->NOT_READY:Lcom/android/mail/lib/base/Splitter$AbstractIterator$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/mail/lib/base/Splitter$AbstractIterator$State;->DONE:Lcom/android/mail/lib/base/Splitter$AbstractIterator$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/mail/lib/base/Splitter$AbstractIterator$State;->FAILED:Lcom/android/mail/lib/base/Splitter$AbstractIterator$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/mail/lib/base/Splitter$AbstractIterator$State;->$VALUES:[Lcom/android/mail/lib/base/Splitter$AbstractIterator$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 410
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #p0=(Reference);
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/mail/lib/base/Splitter$AbstractIterator$State;
    .locals 1
    .parameter

    .prologue
    .line 410
    const-class v0, Lcom/android/mail/lib/base/Splitter$AbstractIterator$State;

    #v0=(Reference);
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/mail/lib/base/Splitter$AbstractIterator$State;

    return-object v0
.end method

.method public static values()[Lcom/android/mail/lib/base/Splitter$AbstractIterator$State;
    .locals 1

    .prologue
    .line 410
    sget-object v0, Lcom/android/mail/lib/base/Splitter$AbstractIterator$State;->$VALUES:[Lcom/android/mail/lib/base/Splitter$AbstractIterator$State;

    #v0=(Reference);
    invoke-virtual {v0}, [Lcom/android/mail/lib/base/Splitter$AbstractIterator$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/mail/lib/base/Splitter$AbstractIterator$State;

    return-object v0
.end method
