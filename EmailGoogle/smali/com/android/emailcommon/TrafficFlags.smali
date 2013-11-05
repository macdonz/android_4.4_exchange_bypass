.class public Lcom/android/emailcommon/TrafficFlags;
.super Ljava/lang/Object;
.source "TrafficFlags.java"


# static fields
.field private static final REASONS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    const/4 v0, 0x3

    #v0=(PosByte);
    new-array v0, v0, [Ljava/lang/String;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    const-string v2, "sync"

    #v2=(Reference);
    aput-object v2, v0, v1

    const/4 v1, 0x1

    #v1=(One);
    const-string v2, "attachment"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    #v1=(PosByte);
    const-string v2, "precache"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/TrafficFlags;->REASONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method public static getAttachmentFlags(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)I
    .locals 2
    .parameter "context"
    .parameter "account"

    .prologue
    .line 70
    iget-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v0=(LongLo);v1=(LongHi);
    long-to-int v0, v0

    #v0=(Integer);
    const/high16 v1, 0x10

    #v1=(Integer);
    or-int/2addr v0, v1

    return v0
.end method

.method public static getSmtpFlags(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)I
    .locals 2
    .parameter "context"
    .parameter "account"

    .prologue
    .line 81
    iget-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v0=(LongLo);v1=(LongHi);
    long-to-int v0, v0

    #v0=(Integer);
    or-int/lit8 v0, v0, 0x0

    return v0
.end method

.method public static getSyncFlags(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)I
    .locals 2
    .parameter "context"
    .parameter "account"

    .prologue
    .line 59
    iget-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v0=(LongLo);v1=(LongHi);
    long-to-int v0, v0

    #v0=(Integer);
    or-int/lit8 v0, v0, 0x0

    return v0
.end method
