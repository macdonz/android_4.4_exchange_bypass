.class final Lcom/android/exchange/service/EasContactsSyncHandler$EasChildren;
.super Ljava/lang/Object;
.source "EasContactsSyncHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/service/EasContactsSyncHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EasChildren"
.end annotation


# static fields
.field public static final ROWS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 119
    const/16 v0, 0x8

    #v0=(PosByte);
    new-array v0, v0, [Ljava/lang/String;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    const-string v2, "data2"

    #v2=(Reference);
    aput-object v2, v0, v1

    const/4 v1, 0x1

    #v1=(One);
    const-string v2, "data3"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    #v1=(PosByte);
    const-string v2, "data4"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data5"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data6"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "data7"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "data8"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data9"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/exchange/service/EasContactsSyncHandler$EasChildren;->ROWS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 114
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method
