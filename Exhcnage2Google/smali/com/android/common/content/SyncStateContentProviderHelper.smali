.class public Lcom/android/common/content/SyncStateContentProviderHelper;
.super Ljava/lang/Object;
.source "SyncStateContentProviderHelper.java"


# static fields
.field private static final ACCOUNT_PROJECTION:[Ljava/lang/String;

.field private static DB_VERSION:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const-wide/16 v0, 0x1

    #v0=(LongLo);v1=(LongHi);
    sput-wide v0, Lcom/android/common/content/SyncStateContentProviderHelper;->DB_VERSION:J

    .line 43
    const/4 v0, 0x2

    #v0=(PosByte);
    new-array v0, v0, [Ljava/lang/String;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    const-string v2, "account_name"

    #v2=(Reference);
    aput-object v2, v0, v1

    const/4 v1, 0x1

    #v1=(One);
    const-string v2, "account_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/common/content/SyncStateContentProviderHelper;->ACCOUNT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method
