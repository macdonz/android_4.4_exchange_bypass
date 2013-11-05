.class Lcom/android/exchange/provider/ExchangeDirectoryProvider$PhoneInfo;
.super Ljava/lang/Object;
.source "ExchangeDirectoryProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/provider/ExchangeDirectoryProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PhoneInfo"
.end annotation


# instance fields
.field private mNumber:Ljava/lang/String;

.field private mType:I


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "number"
    .parameter "type"

    .prologue
    .line 603
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 604
    #p0=(Reference);
    iput-object p1, p0, Lcom/android/exchange/provider/ExchangeDirectoryProvider$PhoneInfo;->mNumber:Ljava/lang/String;

    .line 605
    iput p2, p0, Lcom/android/exchange/provider/ExchangeDirectoryProvider$PhoneInfo;->mType:I

    .line 606
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/android/exchange/provider/ExchangeDirectoryProvider$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 599
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$PhoneInfo;-><init>(Ljava/lang/String;I)V

    #p0=(Reference);
    return-void
.end method

.method static synthetic access$000(Lcom/android/exchange/provider/ExchangeDirectoryProvider$PhoneInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 599
    iget-object v0, p0, Lcom/android/exchange/provider/ExchangeDirectoryProvider$PhoneInfo;->mNumber:Ljava/lang/String;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$100(Lcom/android/exchange/provider/ExchangeDirectoryProvider$PhoneInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 599
    iget v0, p0, Lcom/android/exchange/provider/ExchangeDirectoryProvider$PhoneInfo;->mType:I

    #v0=(Integer);
    return v0
.end method
