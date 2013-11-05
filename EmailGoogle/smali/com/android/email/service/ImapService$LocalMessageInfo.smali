.class Lcom/android/email/service/ImapService$LocalMessageInfo;
.super Ljava/lang/Object;
.source "ImapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/service/ImapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalMessageInfo"
.end annotation


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field final mFlagFavorite:Z

.field final mFlagLoaded:I

.field final mFlagRead:Z

.field final mFlags:I

.field final mId:J

.field final mServerId:Ljava/lang/String;

.field final mTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 197
    const/4 v0, 0x7

    #v0=(PosByte);
    new-array v0, v0, [Ljava/lang/String;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    const-string v2, "_id"

    #v2=(Reference);
    aput-object v2, v0, v1

    const/4 v1, 0x1

    #v1=(One);
    const-string v2, "flagRead"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    #v1=(PosByte);
    const-string v2, "flagFavorite"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "flagLoaded"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "syncServerId"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "timeStamp"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/service/ImapService$LocalMessageInfo;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 5
    .parameter "c"

    .prologue
    const/4 v1, 0x1

    #v1=(One);
    const/4 v2, 0x0

    .line 211
    #v2=(Null);
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 212
    #p0=(Reference);
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    #v3=(LongLo);v4=(LongHi);
    iput-wide v3, p0, Lcom/android/email/service/ImapService$LocalMessageInfo;->mId:J

    .line 213
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    #v0=(Integer);
    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/email/service/ImapService$LocalMessageInfo;->mFlagRead:Z

    .line 214
    const/4 v0, 0x2

    #v0=(PosByte);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    #v0=(Integer);
    if-eqz v0, :cond_1

    :goto_1
    #v1=(Boolean);
    iput-boolean v1, p0, Lcom/android/email/service/ImapService$LocalMessageInfo;->mFlagFavorite:Z

    .line 215
    const/4 v0, 0x3

    #v0=(PosByte);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/email/service/ImapService$LocalMessageInfo;->mFlagLoaded:I

    .line 216
    const/4 v0, 0x4

    #v0=(PosByte);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/email/service/ImapService$LocalMessageInfo;->mServerId:Ljava/lang/String;

    .line 217
    const/4 v0, 0x5

    #v0=(PosByte);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/email/service/ImapService$LocalMessageInfo;->mFlags:I

    .line 218
    const/4 v0, 0x6

    #v0=(PosByte);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    #v0=(LongLo);v1=(LongHi);
    iput-wide v0, p0, Lcom/android/email/service/ImapService$LocalMessageInfo;->mTimestamp:J

    .line 220
    return-void

    :cond_0
    #v0=(Integer);v1=(One);
    move v0, v2

    .line 213
    #v0=(Null);
    goto :goto_0

    :cond_1
    #v0=(Integer);
    move v1, v2

    .line 214
    #v1=(Null);
    goto :goto_1
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    sget-object v0, Lcom/android/email/service/ImapService$LocalMessageInfo;->PROJECTION:[Ljava/lang/String;

    #v0=(Reference);
    return-object v0
.end method
